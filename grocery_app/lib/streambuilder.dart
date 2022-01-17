import 'dart:async';

import 'package:flutter/material.dart';

// List<String> initalDataList = ["Broccoli", "Okra", "Carrot"];

StreamController<double> controller = StreamController<double>.broadcast();
StreamSubscription<double>? subscription;
double add = 0;

// Stream<String> generateStream = (() async* {
//   await Future<void>.delayed(const Duration(seconds: 2));
//   yield "Hi";

//   while (true) {
//       await Future.delayed(Duration(seconds: 1));
//       yield "hello";
//     }
// })();

class StreamBuilderExample extends StatefulWidget {
  const StreamBuilderExample({Key? key}) : super(key: key);

  @override
  _StreamBuilderExampleState createState() => _StreamBuilderExampleState();
}

class _StreamBuilderExampleState extends State<StreamBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   Stream stream = controller.stream;
      //   stream.listen((event) {
      //     print("hi");
      //   });
      // }),
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: const Text("Future Builder Demo"),
      ),
      body: Center(
        // child: StreamBuilder(
        //   stream: controller.stream,
        //   builder: (context, snapshot) {
        //     return Text(
        //       snapshot.data.toString()
        //     );
        //   },
        //   initialData: CircularProgressIndicator(),
        //   ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Stream stream = controller.stream;
                subscription = controller.stream.listen((event) {
                  print("stream value: $add");
                });
              },
              child: Text("Subscribe"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                add += 1.0;
                controller.add(add);
              },
              child: Text(
                "Add Value",
                style: TextStyle(color: Colors.black),
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.yellow),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  subscription?.cancel();
                },
                child: Text("Unsubscribe"))
          ],
        ),
      ),
    );
  }
}
