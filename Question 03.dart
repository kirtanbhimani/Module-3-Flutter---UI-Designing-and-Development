import 'package:flutter/material.dart';

class Question_03 extends StatefulWidget {
  const Question_03({super.key});

  @override
  State<Question_03> createState() => _Question_03State();
}

class _Question_03State extends State<Question_03> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  String _result = '';

  void _calculateRange() {
    final int? num1 = int.tryParse(_controller1.text);
    final int? num2 = int.tryParse(_controller2.text);

    if (num1 == null || num2 == null) {
      setState(() {
        _result = 'Please enter valid numbers.';
      });
      return;
    }

    if (num1 == num2) {
      setState(() {
        _result = 'The two numbers are the same. No numbers between them.';
      });
      return;
    }

    final int start = num1 < num2 ? num1 : num2;
    final int end = num1 > num2 ? num1 : num2;
    final List<int> numbersBetween = [];

    for (int i = start + 1; i < end; i++) {
      numbersBetween.add(i);
    }

    if (numbersBetween.isEmpty) {
      setState(() {
        _result = 'No numbers between $start and $end.';
      });
    } else {
      setState(() {
        _result = 'Numbers between $start and $end: ${numbersBetween.join(', ')}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question_03'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Question 03',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                  Text('Create an application to input 2 numbers from user and all numbers between those 2 numbers in next activity.',style: TextStyle(fontSize: 25),),
                  SizedBox(height: 20,),
                  Container(
                    child: TextField(
                      controller: _controller1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter First Number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          ),
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: TextField(
                      controller: _controller2,
                      decoration: InputDecoration(
                          hintText: 'Enter Second Number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 3
                              )
                          )
                      ),
                    ),
                  ),
                  SizedBox(height: 25,),
                  ElevatedButton(onPressed: _calculateRange, child: Text('Click Here')),
                  SizedBox(height: 25,),
                  Text(
                    _result,
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
