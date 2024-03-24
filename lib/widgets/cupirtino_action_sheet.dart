// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class cupertinoaction extends StatelessWidget {
//   const cupertinoaction({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//         onPressed: () {
//           final act = CupertinoActionSheet(
//               title: Text('Select Option'),
//               message: Text('Which option?'),
//               actions: <Widget>[
//                 CupertinoActionSheetAction(
//                   child: Text('1'),
//                   onPressed: () {
//                     print('pressed');
//                   },
//                 )
//               ],
//               cancelButton: CupertinoActionSheetAction(
//                 child: Text('Cancel'),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//               ));
//           showCupertinoModalPopup(
//               context: context, builder: (BuildContext context) => act);
//         },
//         icon: Icon(Icons.safety_check));
//   }
// }
