import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interview_task/PageOne.dart';
import 'package:interview_task/chatscreen.dart';
import 'package:interview_task/chatscreen_popup.dart';
import 'package:interview_task/pageTwo.dart';
import 'package:interview_task/topic.dart';
import 'package:interview_task/popup.dart';

void main(List<String> args) {
  runApp(MyApp());
}

String _name = 'Your Name';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
      // home: topic(context),
      // home: MyHomePage(),
    );
  }
}
