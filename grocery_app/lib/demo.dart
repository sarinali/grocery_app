import 'package:flutter/material.dart';

List<Image> imagelist = [
  Image.asset("assets/Swiper_20.jpg"),
  Image.asset("assets/Dora-Backpack-looking-up-stock-art.png"),
  Image.asset("assets/0d26c-dora_explorer_show.jpg")
];
int index = 0;

List<String> titleList = ["Item 1", "Item x", "Item 3"];

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
        // floatingActionButton: FloatingActionButton(
        //     onPressed: () {
        //       // path = "assets/Swiper_20.jpg";
        //       setState(() {
        //         index++;
        //         index %= 3;
        //       });
        //     },
        //     child: Icon(Icons.navigate_next)),
        body: ListView.builder(
            itemCount: titleList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(Icons.ac_unit),
                trailing: Icon(Icons.arrow_right),
                title: Text(titleList[index]),
              );
            })

        // Center(
        //   child: imagelist[index],
        // ),
        );
  }
}
