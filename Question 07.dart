import 'package:flutter/material.dart';

class Question_07 extends StatefulWidget {
  const Question_07({super.key});

  @override
  State<Question_07> createState() => _Question_07State();
}

class _Question_07State extends State<Question_07> {

  bool isChecked = false;

  _Checked(bool? value){
    setState(() {
      isChecked= value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question_07'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Question 07',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 25,),
            Text('Create an application to display Textview when checkbox is checked and hide otherwise.',style: TextStyle(fontSize: 25),),
            SizedBox(height: 25,),
            Card(
              child: Row(
                children: [
                  Checkbox(value: isChecked, onChanged: _Checked),
                  Text('Click here',style: TextStyle(fontSize: 25),),
                ],
              ),
            ),
            SizedBox(height: 50,),
            if (isChecked)
              Card(
                color: Colors.greenAccent,
                child: Text(' Cliked ',style: TextStyle(fontSize: 25),)),
          ],
        ),
      ),
    );
  }
}
