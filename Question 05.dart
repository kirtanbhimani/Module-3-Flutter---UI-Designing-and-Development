import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class Question_05 extends StatefulWidget {
  const Question_05({super.key});

  @override
  State<Question_05> createState() => _Question_05State();
}

class _Question_05State extends State<Question_05> {
  Color _backgroundColor = Colors.white;
  
  _changeColor(){
    final random = Random();
    setState(() {
      _backgroundColor = Color.fromARGB(
          255,
          random.nextInt(256),
          random.nextInt(256),
          random.nextInt(256),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question_05'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: _backgroundColor,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                    child: Text(' Question 05 ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                SizedBox(height: 25,),
                Text('Create an application to change background when button is clicked',style: TextStyle(fontSize: 25),),
                SizedBox(height: 25,),
                ElevatedButton(
                  onPressed: _changeColor,
                  child: Text('Click Here',style: TextStyle(color: Colors.black),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
