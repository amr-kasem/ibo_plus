import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PreviewWidget extends StatefulWidget {
  const PreviewWidget({
    super.key,
  });

  @override
  State<PreviewWidget> createState() => _PreviewWidgetState();
}

class _PreviewWidgetState extends State<PreviewWidget> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Focus(
      onKeyEvent: (fn, value) {
        if (value is KeyDownEvent) {
          switch (value.logicalKey) {
            case LogicalKeyboardKey.arrowLeft:
              controller.nextPage(
                duration: Durations.medium2,
                curve: Curves.easeInOut,
              );
              return KeyEventResult.handled;
            case LogicalKeyboardKey.arrowRight:
              controller.previousPage(
                duration: Durations.medium2,
                curve: Curves.easeInOut,
              );
              return KeyEventResult.handled;

            default:
              return KeyEventResult.ignored;
          }
        } else {
          return KeyEventResult.handled;
        }
      },
      child: SizedBox(
        height: 250,
        child: PageView.builder(
          controller: controller,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Image.network(
                    'https://static01.nyt.com/images/2016/01/28/arts/kung/kung-superJumbo.jpg?quality=75&auto=webp',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            );
          },
          itemCount: 3,
        ),
      ),
    );
  }
}
