import 'package:flutter/material.dart';
 
String trollName = "Troll is ugly and fat";
 
class TrollsNameTag extends StatefulWidget {
  const TrollsNameTag({Key? key}) : super(key: key);
 
  @override
  _TrollsNameTagState createState() => _TrollsNameTagState();
}
 
class _TrollsNameTagState extends State<TrollsNameTag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.grey,
            alignment: Alignment.center,
            child: Text(trollName),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (trollName == "Troll is a hot blonde") {
                    trollName = "Troll is ugly and fat";
                  } else {
                    trollName = "Troll is a hot blonde";
                  }
                });
              },
              child: Text("change trolls name"))
        ],
      ),
    );
  }
}