import 'package:flutter/material.dart';
import 'dart:async';

// Stream<String> generateStream = (() async* {
//   int d = 0;
//   while (true) {
//     await Future<void>.delayed(const Duration(seconds: 2));
//     if (d % 2 == 0) {
//       yield "hello";
//     } else {
//       yield "hi";
//     }
//     d++;
//   }
// })();
double add = 0;

StreamController<double> controller = StreamController<double>.broadcast();
StreamSubscription<double>? subscription;

class StreamExampleWidget extends StatefulWidget {
  const StreamExampleWidget({Key? key}) : super(key: key);

  @override
  _StreamExampleWidgetState createState() => _StreamExampleWidgetState();
}

class _StreamExampleWidgetState extends State<StreamExampleWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: Text("Stream Example Page"),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                subscription = controller.stream.listen((event) {
                  print("Stream value: $add");
                });
              },
              child: Text("Subscribe")),
          ElevatedButton(
              onPressed: () {
                add += 1.0;
                controller.add(add);
              },
              child: Text("Add Value")),
          ElevatedButton(
              onPressed: () {
                subscription?.cancel();
              },
              child: Text("Unsubscribe"))
        ],
      )),
    );
  }
}
