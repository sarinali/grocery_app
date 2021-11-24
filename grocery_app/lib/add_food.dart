import 'package:flutter/material.dart';

class AddFood extends StatefulWidget {
  const AddFood({Key? key}) : super(key: key);

  @override
  _AddFoodState createState() => _AddFoodState();
}

int indx = 0;

List<Image> imageList = [
  Image.asset(
      "assets/73-735035_dora-the-explorer-benny-the-bull-nickelodeon-nick.png"),
  Image.asset("assets/Boots_The_Monkey.jpg"),
  Image.asset("assets/Dora-Copy.jpg"),
  Image.asset("assets/Swiper_20.jpg"),
];

class _AddFoodState extends State<AddFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next_outlined),
        onPressed: () {
          indx++;
          indx %= 4;
          setState(() {});
        },
      ),
      appBar: AppBar(
        title: Text("Dora"),
        backgroundColor: Colors.purple[200],
      ),
      body: Center(
        child: imageList[indx],
      ),
    );
  }
}
