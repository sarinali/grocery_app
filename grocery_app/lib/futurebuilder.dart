import 'package:flutter/material.dart';

Future<List<String>> getData() async {
  await Future.delayed(const Duration(seconds: 2));
  return ["Apple", "Banana", "Kiwi", "Orange", "Edxfruit", "Watermelon"];
}

class FutureBuilderDemo extends StatefulWidget {
  const FutureBuilderDemo({Key? key}) : super(key: key);

  @override
  _FutureBuilderDemoState createState() => _FutureBuilderDemoState();
}

class _FutureBuilderDemoState extends State<FutureBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: const Text("Future Builder Demo"),
      ),
      body: Center(
        child: FutureBuilder(
            future: getData(),
            builder: (context, AsyncSnapshot snapshot) {
              return snapshot.connectionState == ConnectionState.waiting
                  ? CircularProgressIndicator()
                  : ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Icon(Icons.food_bank),
                          title: Text(snapshot.data[index]),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        );
                      });
            }),
      ),
    );
  }
}
