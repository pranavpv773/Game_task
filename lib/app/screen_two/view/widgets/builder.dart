// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/app/screen_one/view_model/one_notifier.dart';
// import 'package:flutter_application_1/app/screen_two/view_model/second_notifier.dart';
// import 'package:provider/provider.dart';

// class ButtonBuilderScreen extends StatelessWidget {
//   const ButtonBuilderScreen({
//     Key? key,
//     required this.heights,
//   }) : super(key: key);

//   final double heights;

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       padding: const EdgeInsets.symmetric(
//         vertical: 16.0,
//       ),
//       physics: const ScrollPhysics(),
//       shrinkWrap: true,
//       gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//         maxCrossAxisExtent: 200,
//         mainAxisExtent: heights / 5,
//         childAspectRatio: 3 / 2,
//         crossAxisSpacing: 20,
//         mainAxisSpacing: 20,
//       ),
//       itemCount: int.parse(context.read<OneNotifier>().textContrlr.text),
//       itemBuilder: (BuildContext ctx, index) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               side: BorderSide(
//                 width: 5.0,
//                 color: context.watch<SecondNotifier>().map.containsValue(index)
//                     ? Colors.green
//                     : Colors.blue,
//               ),
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 50,
//                 vertical: 10,
//               ),
//               primary: context.watch<SecondNotifier>().map.containsValue(index)
//                   ? Colors.white
//                   : Colors.grey,
//               textStyle: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 2,
//               ),
//             ),
//             onPressed: () {
//               context.read<SecondNotifier>().changeColor(index);
//             },
//             child: Text(
//               "${index + 1}",
//               style: const TextStyle(
//                 color: Colors.blue,
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
