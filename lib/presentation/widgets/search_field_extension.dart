// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// extension SearchField on TextField {
//   Widget getSearchWidget({Widget? title}) {
//     return SearchBox(
//       parent: this,
//       title: title,
//     );
//   }
// }

// class SearchBox extends StatefulWidget {
//   const SearchBox({
//     super.key,
//     required this.parent,
//     required this.title,
//   });
//   final TextField parent;
//   final Widget? title;

//   @override
//   State<SearchBox> createState() => _SearchBoxState();
// }

// class _SearchBoxState extends State<SearchBox> {
//   final focusScopeNode = FocusScopeNode(skipTraversal: true);
//   bool focused = false;
//   bool search = false;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       clipBehavior: Clip.none,
//       children: [
//         AnimatedPositioned(
//           duration: Durations.medium1,
//           top: -4,
//           right: search ? -226 : 4,
//           height: 32,
//           width: search ? 266 : 32,
//           child: AnimatedContainer(
//             duration: Durations.medium1,
//             decoration: BoxDecoration(
//               color: focused || search ? Colors.black54 : Colors.transparent,
//               borderRadius: BorderRadius.circular(16),
//             ),
//           ),
//         ),
//         Positioned(
//           top: -4,
//           right: -212,
//           height: 300,
//           width: 250,
//           child: AnimatedSwitcher(
//             duration: Durations.medium1,
//             child: search
//                 ? Focus(
//                     skipTraversal: true,
//                     descendantsAreTraversable: search,
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 32,
//                           child: Padding(
//                             padding:
//                                 const EdgeInsetsDirectional.only(start: 48),
//                             child: widget.parent,
//                           ),
//                         ),
//                         const SizedBox(height: 4),
//                         Expanded(
//                           child: Padding(
//                             padding:
//                                 const EdgeInsetsDirectional.only(start: 48),
//                             child: DecoratedBox(
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(4),
//                                 color: Colors.black54,
//                               ),
//                               child: FocusScope(
//                                 node: focusScopeNode,
//                                 autofocus: true,
//                                 onKeyEvent: (node, event) {
//                                   if (event is KeyUpEvent) {
//                                     if (event.logicalKey ==
//                                             LogicalKeyboardKey.goBack ||
//                                         event.logicalKey ==
//                                             LogicalKeyboardKey.escape) {
//                                       focusScopeNode.unfocus();
//                                       setState(() => search = false);
//                                       return KeyEventResult.handled;
//                                     }
//                                   }
//                                   return KeyEventResult.ignored;
//                                 },
//                                 child: GridView(
//                                   gridDelegate:
//                                       const SliverGridDelegateWithFixedCrossAxisCount(
//                                     crossAxisCount: 5,
//                                   ),
//                                   children: [
//                                     ...letters.map((e) => LetterTile(letter: e))
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 : const SizedBox.shrink(),
//           ),
//         ),
//         InkWell(
//           focusColor: Colors.transparent,
//           hoverColor: Colors.transparent,
//           splashColor: Colors.transparent,
//           highlightColor: Colors.transparent,
//           onFocusChange: (value) {
//             setState(() {
//               focused = value;
//             });
//           },
//           onTap: () {
//             setState(() {
//               search = true;
//             });
//             Future.delayed(Duration.zero).then((_) {
//               focusScopeNode.requestFocus();
//             });
//           },
//           child: Row(
//             children: [
//               if (widget.title != null) Expanded(child: widget.title!),
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 8),
//                 child: Icon(Icons.search),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class LetterTile extends StatelessWidget {
//   const LetterTile({
//     super.key,
//     required this.letter,
//   });
//   final String letter;
//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       style: OutlinedButton.styleFrom(
//         shape: const RoundedRectangleBorder(),
//         surfaceTintColor: Colors.white,
//         padding: const EdgeInsets.all(0),
//       ),
//       onPressed: () {},
//       child: Center(child: Text(letter)),
//     );
//   }
// }
