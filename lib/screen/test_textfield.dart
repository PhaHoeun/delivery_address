// import 'package:flutter/material.dart';

// class TextSubmitWidget extends StatefulWidget {
//   const TextSubmitWidget({Key? key,  this.onSubmit}) : super(key: key);
//   final ValueChanged<String>? onSubmit;

//   @override
//   State<TextSubmitWidget> createState() => _TextSubmitWidgetState();
// }
// class _TextSubmitWidgetState extends State<TextSubmitWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         const TextField(
//           decoration: InputDecoration(
//             labelText: 'Enter your name',
//             // TODO: add errorHint
//           ),
//         ),
//         ElevatedButton(
//           // TODO: implement callback
//           onPressed: () {},
//           child: Text(
//             'Submit',
//             style: Theme.of(context).textTheme.headline6,
//           ),
//         )
//       ],
//     );
//   }
// }
