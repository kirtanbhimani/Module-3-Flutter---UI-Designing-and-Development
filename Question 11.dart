import 'package:flutter/material.dart';

class Question_11 extends StatefulWidget {
  const Question_11({super.key});

  @override
  State<Question_11> createState() => _Question_11State();
}

class _Question_11State extends State<Question_11> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _logincontroller = TextEditingController();
    TextEditingController _passcontroller = TextEditingController();

    var nameController = TextEditingController();
    var genderController = TextEditingController();
    var dobContoller= TextEditingController();
    var contactController= TextEditingController();
    var emailController= TextEditingController();
    var passController= TextEditingController();
    int _value = 1;

    return Scaffold(
      appBar: AppBar(
        title: Text('Question_11'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Question_11',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Text('Create login and registration form.',style: TextStyle(fontSize: 25),),
                SizedBox(height: 15,),
                Card(
                  color: Colors.lightBlue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Login Form',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        SizedBox(height: 15,),
                        TextField(
                          controller: _logincontroller,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Enter Email',
                            hintStyle: TextStyle(color: Colors.white),
                            focusColor: Colors.blue,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2
                              )
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.email_outlined,
                                size: 25,
                                color: Colors.white,
                              ),
                              onPressed: (){
            
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        TextField(
                          controller: _passcontroller,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(color: Colors.white),
                            focusColor: Colors.blue,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2
                                )
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.remove_red_eye,
                                size: 25,
                                color: Colors.white,
                              ),
                              onPressed: (){
            
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        ElevatedButton(
                            onPressed: (){
                              String login = _logincontroller.text.toString();
                              String pass = _passcontroller.text.toString();
            
                              print('Email : $login');
                              print('Password : $pass');
                            },
                            child: Text('Login',style: TextStyle(fontSize: 25,color: Colors.blue),))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Card(
                  color: Colors.greenAccent,
                  child: Center(
                    child: Container(
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Registration Form',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                          ),
                          SizedBox(height: 15,),
                          TextField(
                            keyboardType: TextInputType.name,
                            controller: nameController,
                            decoration: InputDecoration(
                              hintText: 'Input Full Name',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.blue,
                                    width: 2,
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                    width: 2,
                                  )
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.abc,
                                  color: Colors.black,
                                ),
                                onPressed: (){
                      
                                },
                              ),
                            ),
                          ),
                      
                          Container(height:15,),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                                child: Text('Gender',style: TextStyle(fontSize: 20),),
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: 1,
                                      groupValue: _value,
                                      onChanged: (value){
                                        setState(() {
                                          _value = value!;
                                        });
                                      }),
                                  SizedBox(
                                      width: 10
                                  ),
                                  Text('Male'),
                      
                                  Radio(
                                      value: 2,
                                      groupValue: _value,
                                      onChanged: (value){
                                        setState(() {
                                          _value = value!;
                                        });
                                      }),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Female'),
                      
                                  Radio(
                                      value: 3,
                                      groupValue: _value,
                                      onChanged: (value){
                                        setState(() {
                                          _value= value!;
                                        });
                                      }),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('Other')
                                ],
                              ),
                            ],
                          ),
                      
                          Container(height: 15,),
                          Column(
                            children: [
                              Text('Date of Birth',style: TextStyle(fontSize: 20),),
                              ElevatedButton(onPressed: ()async{
                                DateTime? dateTime = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime(1947),
                                    lastDate: DateTime.now());
                                print('Date of Birth : ${dateTime?.day} / ${dateTime?.month} / ${dateTime?.year}');
                              },
                                child: Text('Select Date'),
                              ),
                            ],
                          ),
                      
                          Container(height:15,),
                          TextField(
                            controller: contactController= TextEditingController(),
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                hintText: "Input Mobile No.",
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.blue,
                                        width: 2
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 2
                                    )
                                ),
                                //prefixText: "Input Email",   In exchange of 'hintText'
                                suffixIcon: IconButton(
                                  icon: const Icon(
                                    Icons.phone,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                      
                                  },
                                )
                            ),
                          ),
                      
                          Container(height: 15,),
                          TextField(
                            controller: emailController= TextEditingController(),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: "Input Email Address",
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.blue,
                                        width: 2
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 2
                                    )
                                ),
                      
                                //prefixText: "Input Email",
                                suffixIcon: IconButton(
                                  icon: const Icon(
                                    Icons.email,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                      
                                  },
                                )
                            ),
                          ),
                      
                          Container(height: 15,),
                          TextField(
                            controller: passController= TextEditingController(),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                                hintText: "Input Password",
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.blue,
                                        width: 2
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                        color: Colors.grey,
                                        width: 2
                                    )
                                ),
                                suffixIcon: IconButton(
                                  icon: const Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                  },
                                )
                            ),
                          ),
                      
                          Container(height: 15,),
                          OutlinedButton(
                              onPressed: (){
                                String name = nameController.text.toString();
                                String gender = genderController.text.toString();
                                String contact= contactController.text.toString();
                                String email= emailController.text.toString();
                                String pass= passController.text.toString();
                                String dob= dobContoller.text.toString();
                      
                                print('Name : $name');
                                print('Gender : $gender');
                                print('Date of Birth : $dob');
                                print('contact : $contact');
                                print('email : $email');
                                print('PassWord : $pass');
                      
                                var _name;
                                var _contact;
                                var _dob;
                                var _gender;
                                var _email;
                                var _pass;
                              },
                              child: Text('Login')),
                      
                          Container(height: 12,),
                          RichText(text: const TextSpan(
                              style: TextStyle(fontSize: 15,color: Colors.black87),
                              children: [
                                TextSpan(text: 'If already have an account ? '),
                                TextSpan(text: 'Click Here', style: TextStyle(fontSize: 20, color: Colors.blue)),
                                TextSpan(text: ' to Login'),
                              ]
                          ))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
