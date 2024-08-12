import 'package:flutter/material.dart';
import 'package:new_app/Question%2001(II).dart';
import 'package:new_app/Question%2002.dart';
import 'package:new_app/Question%2003.dart';
import 'package:new_app/Question%2004.dart';
import 'package:new_app/Question%2005.dart';
import 'package:new_app/Question%2006.dart';
import 'package:new_app/Question%2007.dart';
import 'package:new_app/Question%2008.dart';
import 'package:new_app/Question%2009.dart';
import 'package:new_app/Question%2011.dart';
import 'package:new_app/Question%2012%20(I).dart';
import 'package:new_app/Question%2012%20(II).dart';

import 'Question 01(I).dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Question_11(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(

      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
