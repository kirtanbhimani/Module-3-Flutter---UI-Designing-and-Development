import 'package:flutter/material.dart';

class Question_09 extends StatefulWidget {
  const Question_09({super.key});

  @override
  State<Question_09> createState() => _Question_09State();
}

class _Question_09State extends State<Question_09> {
  Color _selectedColor = Colors.white;

  _setColor(Color? color){
    setState(() {
      _selectedColor= color ?? Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Question_09'),
      ),
      body: Container(
        color: _selectedColor,    //Set background color
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Question 09',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              SizedBox(height: 25,),
              Text('Create an application to change background when button is clicked.',style: TextStyle(fontSize: 25),),
              SizedBox(height: 25,),
              Text(
                'Select a Color : ',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 20,),
              RadioListTile<Color>(
                title: Text('Red',style: TextStyle(fontSize: 25),),
                value: Colors.red,
                groupValue: _selectedColor,
                onChanged: _setColor,
                activeColor: Colors.white,
              ),
              RadioListTile<Color>(
                title: Text('Green',style: TextStyle(fontSize: 25),),
                value: Colors.green,
                groupValue: _selectedColor,
                onChanged: _setColor,
                activeColor: Colors.white,
              ),
              RadioListTile<Color>(
                title: Text('Yellow',style: TextStyle(fontSize: 25),),
                value: Colors.yellow,
                groupValue: _selectedColor,
                onChanged: _setColor,
                activeColor: Colors.black,
              ),
              RadioListTile<Color>(
                title: Text('Blue',style: TextStyle(fontSize: 25),),
                value: Colors.blue,
                groupValue: _selectedColor,
                onChanged: _setColor,
                activeColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
