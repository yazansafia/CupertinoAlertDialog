import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MYapp());
}

class MYapp extends StatelessWidget {
  const MYapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actionsIconTheme: IconThemeData(color: Colors.amber),
          backgroundColor: Colors.grey,
          automaticallyImplyLeading: true,
          elevation: 40,
          centerTitle: true,
          title: Text("tuned"),
          titleTextStyle: TextStyle(fontSize: 40),
        ),
        drawer: Drawer(
          backgroundColor: Colors.amber,
          child: Container(
            child: Text("hiiiii"),
          ),
        ),
        body: Column(
          children: [
            CupertinoAlertDialog(
              title: Text("can go to "),
              content: Text("go to home"),
              actions: [
                CupertinoDialogAction(child: Text("yes")),
                CupertinoDialogAction(child: Text("no"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
