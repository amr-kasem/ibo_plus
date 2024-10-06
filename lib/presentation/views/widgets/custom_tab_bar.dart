import 'package:easy_localization/easy_localization.dart' as e;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controllers/app_state.dart';

class CustomTabBar extends ConsumerStatefulWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  ConsumerState<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends ConsumerState<CustomTabBar> {
  double indEnd = 0;
  double indStart = 0;
  final length = 6;
  late StateController<int> indexNotifier;
  void moveIndicator(int index, {bool updateUIOnly = false}) async {
    if (!updateUIOnly) indexNotifier.update((_) => index);
    final childRenderBox = children[index];
    double start =
        childRenderBox.localToGlobal(Offset.zero, ancestor: renderBox).dx;
    double end = renderBox.size.width - (start + childRenderBox.size.width);
    setState(() {
      indEnd = end;
      indStart = start;
    });
    Future.delayed(Durations.short1).then((_) {
      if (mounted) {
        Scrollable.ensureVisible(
          context,
          alignmentPolicy: ScrollPositionAlignmentPolicy.explicit,
          alignment: index == 1 || index == 4 || index == 5 ? 0 : 0.5,
          duration: Durations.medium1,
          curve: Curves.easeInOut,
        );
      }
    });
  }

  late RenderBox renderBox;
  List<RenderBox> findRenderBoxesByType<T>(BuildContext context) {
    List<RenderBox> renderBoxes = [];
    void visitor(Element element) {
      if (element.widget is T) {
        RenderObject? renderObject = element.renderObject;
        if (renderObject is RenderBox) {
          renderBoxes.add(renderObject);
        }
      }
      element.visitChildren(visitor);
    }

    context.visitChildElements(visitor);
    return renderBoxes;
  }

  var children = <RenderBox>[];
  @override
  void initState() {
    indexNotifier = ref.read(AppState.homeIndex.notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      children = findRenderBoxesByType<CustomTab>(context);
      renderBox = context.findRenderObject() as RenderBox;
    });
    super.initState();
  }

  bool focused = true;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      children = findRenderBoxesByType<CustomTab>(context);
      renderBox = context.findRenderObject() as RenderBox;
    });
    final index = ref.watch(AppState.homeIndex);
    final hideBar = ref.watch(AppState.hideBar);

    return AnimatedOpacity(
      opacity: hideBar ? 0 : 1,
      duration: Durations.medium1,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.black54,
              Color.fromARGB(0, 46, 45, 45)
            ],
            stops: [0.0, 0.2, 1],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Focus(
          focusNode: AppState.navBar,
          canRequestFocus: !hideBar,
          autofocus: true,
          skipTraversal: hideBar,
          onFocusChange: (v) {
            setState(() {
              focused = v;
            });
          },
          onKeyEvent: (fn, k) {
            final step =
                Directionality.of(context) == TextDirection.ltr ? 1 : -1;

            if (fn.hasPrimaryFocus) {
              if (k is KeyDownEvent) {
                switch (k.logicalKey) {
                  case LogicalKeyboardKey.arrowLeft:
                    var nextStep = index - step;
                    nextStep = nextStep < length ? nextStep : length - 1;
                    nextStep = nextStep < 0 ? 0 : nextStep;

                    moveIndicator(nextStep);
                    return KeyEventResult.handled;
                  case LogicalKeyboardKey.arrowRight:
                    var nextStep = index + step;
                    nextStep = nextStep < length ? nextStep : length - 1;
                    nextStep = nextStep < 0 ? 0 : nextStep;

                    moveIndicator(nextStep);
                    return KeyEventResult.handled;
                  case LogicalKeyboardKey.select:
                    fn.focusInDirection(TraversalDirection.down);
                    return KeyEventResult.handled;
                }
              }
            }
            return KeyEventResult.ignored;
          },
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: Durations.medium1,
                left: indStart,
                right: indEnd,
                height: 40,
                top: 0,
                child: AnimatedContainer(
                  duration: Durations.short3,
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: AppState.navBar.hasFocus
                        ? LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: const [0, 1],
                            colors: [
                              Colors.amber.withOpacity(0.15),
                              Colors.transparent
                            ],
                          )
                        : null,
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: Durations.medium1,
                left: indStart,
                right: indEnd,
                top: 0,
                child: Container(
                  height: 3,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 0,
                right: 0,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CustomTab(
                          onTap: () {
                            moveIndicator(0);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.home),
                              const Text('home').tr(),
                            ],
                          ),
                        ),
                        CustomTab(
                          onTap: () {
                            moveIndicator(1);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.tv),
                              const Text('live_tv').tr(),
                            ],
                          ),
                        ),
                        CustomTab(
                          onTap: () {
                            moveIndicator(2);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.movie),
                              const Text('movies').tr(),
                            ],
                          ),
                        ),
                        CustomTab(
                          onTap: () {
                            moveIndicator(3);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.video_collection),
                              const Text('series').tr()
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        CustomTab(
                          onTap: () {
                            moveIndicator(4);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.search),
                              const Text('search').tr()
                            ],
                          ),
                        ),
                        CustomTab(
                          onTap: () {
                            moveIndicator(5);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Icon(Icons.settings),
                              const Text('settings').tr()
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.child,
    required this.onTap,
    this.autofocus = false,
  });

  final Widget child;
  final VoidCallback onTap;
  final bool autofocus;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: InkWell(
        canRequestFocus: false,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: child,
        ),
      ),
    );
  }
}
