import 'package:flutter/material.dart';

class Question_08 extends StatefulWidget {
  const Question_08({super.key});

  @override
  State<Question_08> createState() => _Question_08State();
}

class _Question_08State extends State<Question_08> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question_08'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Question 08',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(height: 25,),
              Text('Write a program to show four images around Textview.',style: TextStyle(fontSize: 25),),
              SizedBox(height: 25,),

              // Top Image
              Image.asset('assets/images/riverfront.jpg',height: 100,width: 100,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  // Left Image
                  Image.asset('assets/images/riverfront.jpg',height: 100,width: 100),

                  //Centre Text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                        color: Colors.amber,
                        child: Text(' RivarFront ',style: TextStyle(fontSize: 25))),
                  ),

                  // Right Image
                  Image.asset('assets/images/riverfront.jpg',height: 100,width: 100),
                ],
              ),
              //Bottom Image
              Image.asset('assets/images/riverfront.jpg',height: 100,width: 100),
            ],
          ),
        ),
      ),
    );
  }
}
