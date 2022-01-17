import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/streambuilder.dart';

import 'demo.dart';
import 'futurebuilder.dart';
// import 'package:grocery_app/add_food.dart';
// import 'package:grocery_app/viewlist.dart';

String trollName = "Troll is ugly and fat";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        // "/viewlist": (context) => ViewList(),
        "/demo": (context) => Demo(),
        "/future": (context) => FutureBuilderDemo(),
        "/stream": (context) => StreamBuilderExample()
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Route _createRoute() {
//   return PageRouteBuilder(
//       pageBuilder: (context, animation, secondaryAnimation) => const ViewList(),
//       transitionsBuilder: (context, animation, secondaryAnimation, child) {
//         const begin = Offset(0.0, 1.0);
//         const end = Offset.zero;
//         const curve = Curves.easeOut;

//         var tween = Tween(begin: begin, end: end);
//         return SlideTransition(
//           position: animation.drive(tween),
//           child: child,
//         );
//       });
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: const Text(
          "Grocery App Home",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              // whitespace
              flex: 2,
              child: Container(
                  // color: Colors.red,
                  ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "My",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                // color: Colors.blue,
              ),
            ),
            // grocery list
            Expanded(
              flex: 1,
              child: Container(
                // color: Colors.red,
                alignment: Alignment.topCenter,
                child: const Text(
                  "Grocery List",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                  // color: Colors.blue,
                  ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/future");
                  },
                  child: Text(
                    "View List",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/stream");
                  },
                  child: Text(
                    "Browse Food",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/demo");
                  },
                  child: Text(
                    "Add Food",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Settings",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
