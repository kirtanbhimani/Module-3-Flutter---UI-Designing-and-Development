import 'package:flutter/material.dart';

class Question_06 extends StatefulWidget {
  const Question_06({super.key});

  @override
  State<Question_06> createState() => _Question_06State();
}

class _Question_06State extends State<Question_06> {

  double fontsize = 16.0;

  increaseFontSize(){
    setState(() {
      fontsize += 2;
    });
  }

  decreaseFontSize(){
    setState(() {
      if (fontsize > 2){
        fontsize-=2;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question_06'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Question 06',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 25,),
              Text('create an application to increate font size when plus button click and decrease when minus button click.',style: TextStyle(fontSize: 25),),
              SizedBox(height: 25,),
              Text(
                'Kirtan',
                style: TextStyle(fontSize: fontsize),
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: decreaseFontSize,
                      child: Text('Decrease'),
                  ),
                  SizedBox(width: 20,),
                  ElevatedButton(
                      onPressed: increaseFontSize,
                      child: Text('Increase'))
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}
