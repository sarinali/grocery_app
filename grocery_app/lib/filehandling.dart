import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

List<String> wordList = List.empty(growable: true);

Future<String> get _localPath async {
  Directory appDocDir = await getApplicationDocumentsDirectory();
  String appDocPath = appDocDir.path;
  return appDocPath;
}

Future<File> get _localFile async {
  final path = await _localPath;
  return File('$path/file.txt');
}

Future<void> resetFile() async {
  final file = await _localFile;
  file.writeAsString("");
}

Future<void> writeToFile(String word) async {
  final file = await _localFile;
  String curString = await file.readAsString();
  if (curString == "") {
    file.writeAsString(word);
  } else {
    file.writeAsString(curString + "|" + word);
  }
  return;
}

Future<void> eraseFileContents() async {
  final file = await _localFile;
  file.writeAsString("");
  return;
}

Future<String> readFile() async {
  try {
    final file = await _localFile;

    // Read the file
    final contents = await file.readAsString();

    return contents;
  } catch (e) {
    // If encountering an error, return 0
    return "";
  }
}

Future<void> parseContents() async {
  wordList = List.empty(growable: true);
  String content  = await readFile();
  String finalString = "";
  for (int i = 0; i < content.length; i++) {
    if (content[i] == "|") {
      wordList.add(finalString);
      finalString = "";
    } else {
      finalString += content[i];
    }
  }
  for (int i = 0; i < wordList.length; i++) {
    print(wordList[i]);
  }
}

class FileHandling extends StatefulWidget {
  const FileHandling({Key? key}) : super(key: key);

  @override
  _FileHandlingState createState() => _FileHandlingState();
}

class _FileHandlingState extends State<FileHandling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
        title: Text("File Example"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
      
          SizedBox(
            height: 300,
            child: ListView.builder(
            itemCount: wordList.length,
            itemBuilder: (context, index) {
                return Text(
                  wordList[index],
                );
        }),
          ),
        ElevatedButton(onPressed: () {
          writeToFile("hello everyone");
          // resetFile();
        }, child: Text("Write")),
        ElevatedButton(onPressed: () async {
          await parseContents();
          setState(() {
            
          });
        }, child: Text("Parse"))
          ],
        ),
      )
    );
  }
}
