import 'package:flutter/material.dart';

List<Image> imagelist = [
  Image.asset("assets/Swiper_20.jpg"),
  Image.asset("assets/Dora-Backpack-looking-up-stock-art.png"),
  Image.asset("assets/0d26c-dora_explorer_show.jpg")
];
int index = 0;

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: Text("Demo"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // path = "assets/Swiper_20.jpg";
            setState(() {
              index++;
              index %= 3;
            });
          },
          child: Icon(Icons.navigate_next)),
      body: Center(
        child: imagelist[index],
      ),
    );
  }
}
