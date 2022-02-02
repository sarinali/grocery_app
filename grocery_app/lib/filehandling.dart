import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

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
  // String curString = await file.readAsString();
  file.writeAsString(word + "|");
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

String parseContents(String content) {
  String finalString = "";
  for (int i = 0; i < content.length; i++) {
    if (content[i] == "|") {
      finalString += " ";
    } else {
      finalString += content[i];
    }
  }
  return finalString;
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
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await writeToFile("hey betch");
          String hello = await readFile();
          print(parseContents(hello));
        },
      ),
    );
  }
}
