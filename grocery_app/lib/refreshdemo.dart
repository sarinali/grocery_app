// import 'package:flutter/material.dart';
// import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';

// List<String> list = ["Item 1", "Item x", "Item 3"];

// class RefreshDemo extends StatefulWidget {
//   const RefreshDemo({Key? key}) : super(key: key);

//   @override
//   _RefreshDemoState createState() => _RefreshDemoState();
// }

// class _RefreshDemoState extends State<RefreshDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purple[200],
//         title: Text("Refresh Indicator Example"),
//       ),
//       body: CustomRefreshIndicator(
//         onRefresh: () => Future.delayed(const Duration(seconds: 3)),
//         child: ListView.builder(
//             itemCount: list.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 leading: Icon(Icons.food_bank),
//                 title: Text(list[index]),
//                 trailing: Icon(Icons.arrow_forward_ios_rounded),
//               );
//             }),
//         builder: (
//           BuildContext context,
//           Widget child,
//           IndicatorController controller,
//         ) {
//           return child;
//         },
//       ),
//     );
//   }
// }
