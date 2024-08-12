import 'package:flutter/material.dart';

class Question_02 extends StatefulWidget {
  const Question_02({super.key});

  @override
  State<Question_02> createState() => _Question_02State();
}

class _Question_02State extends State<Question_02> {
  final TextEditingController _controller = TextEditingController();
  String _reversedNumber = '';
  _reverseNumber(){
    String inputText = _controller.text;
    if(inputText.isNotEmpty){
      String reversedText = inputText
          .split('')
          .reversed
          .join('');
      setState(() {
        _reversedNumber = reversedText;
      });
    }
    else{
      setState(() {
        _reversedNumber = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 02'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('2. Create an application to take input number from user and print its reverse number in TextField.',style: TextStyle(color: Colors.black,fontSize: 25),),
                SizedBox(height: 25,),
                Container(
                  child: TextField(
                    controller: _controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Number',
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 3
                        )
                      )
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  child: TextField(
                    controller: TextEditingController(text: _reversedNumber,),
                    decoration: InputDecoration(
                        hintText: 'Answer',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                                color: Colors.green,
                                width: 3
                            )
                        )
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                ElevatedButton(onPressed: _reverseNumber, child: Text('Reverse',style: TextStyle(fontSize: 20),))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
