import 'package:flutter/material.dart';

class ViewList extends StatelessWidget {
  const ViewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Pop Current")))
        ],
      ),
    );
  }
}
