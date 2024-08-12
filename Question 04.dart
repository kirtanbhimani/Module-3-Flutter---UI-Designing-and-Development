import 'package:flutter/material.dart';

class Question_04 extends StatefulWidget {
  const Question_04({super.key});

  @override
  State<Question_04> createState() => _Question_04State();
}

class _Question_04State extends State<Question_04> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  String operation = 'Add'; //Default
  double? result;

  calcuteResult(){
    double num1 = double.parse(_controller1.text);
    double num2 = double.parse(_controller2.text);

    setState(() {
      switch(operation){
        case 'Add':
          result = num1 + num2;
          break;
        case 'Substraction':
          result = num1 - num2 ;
          break;
        case 'Multiplication':
          result = num1 * num2 ;
          break;
        case 'Division':
          result = num2 != 0 ? num1 / num2 : null ;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question_04'),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Question 04',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                  SizedBox(height: 25,),
                  Text('Create an application with radio buttons (Add, Substraction, Multiply, Division) EditText (number1, number2) and print result as per user choice from radio button in TextView ',style: TextStyle(fontSize: 25)),
                  SizedBox(height: 25,),
                  TextField(
                    controller: _controller1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter First Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2),
                        borderSide: BorderSide(width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2),
                        borderSide: BorderSide(
                            width: 3,
                            color: Colors.grey
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  TextField(
                    controller: _controller2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Second Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2),
                        borderSide: BorderSide(width: 3),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                              width: 3,
                              color: Colors.grey
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Text('Chose an Operation',style: TextStyle(fontSize: 20),),
                  Row(
                    children: [
                      Radio(
                          value: 'Add',
                          groupValue: operation,
                          onChanged: (value){
                            setState(() {
                              operation= value!;
                            });
                          },
                        focusColor: Colors.grey,
                      ),
                      Text('Addition',style: TextStyle(fontSize: 25),),
                      Radio(
                        value: 'Substraction',
                        groupValue: operation,
                        onChanged: (value){
                          setState(() {
                            operation= value!;
                          });
                        },
                        focusColor: Colors.grey,
                      ),
                      Text('Substraction',style: TextStyle(fontSize: 25),),
                    ],
                  ),
                  Row(
                    children: [
                    Radio(
                    value: 'Multiplication',
                    groupValue: operation,
                    onChanged: (value){
                      setState(() {
                        operation= value!;
                      });
                    },
                      focusColor: Colors.grey,
                  ),
                  Text('Multiplication',style: TextStyle(fontSize: 25),),
                  Radio(
                    value: 'Division',
                    groupValue: operation,
                    onChanged: (value){
                    setState(() {
                      operation= value!;
                      });
                    },
                    focusColor: Colors.grey,
                  ),
                  Text('Divion',style: TextStyle(fontSize: 25),),
                    ]
                  ),
                  SizedBox(height: 25,),
                  ElevatedButton(onPressed: calcuteResult, child: Text('Answer',style: TextStyle(fontSize: 25),)),
                  SizedBox(height: 25,),
                  Text(
                   'Result ${result ?? ''}',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
