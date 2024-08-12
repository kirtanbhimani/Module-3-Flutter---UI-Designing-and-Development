import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question_12_II extends StatelessWidget {
  const Question_12_II({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Stack(
        children: [
          Container(
            height: 786,
            width: 410,
            color: Colors.amber,
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Positioned(
                top: 150,
                child: Container(
                  height: 650,
                  width: 415,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(80),topRight: Radius.circular(80)),

                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 150.0),
                        child: Text('* Gujarati Thali *',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 25),
                        child: Row(
                          children: [
                            Icon(Icons.access_time_outlined,color: Colors.blue,),
                            Text(' 30 min ',style: TextStyle(fontSize: 20),),
                            SizedBox(width: 10,),
                            Icon(Icons.star,color: Colors.amber,),
                            Text(' 4.8 ',style: TextStyle(fontSize: 20),),
                            SizedBox(width: 10,),
                            Icon(Icons.local_fire_department_rounded,color: Colors.deepOrange),
                            Text(' 325 Kcal ',style: TextStyle(fontSize: 20),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 125,top: 25),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Card(
                                  color: Colors.white60,
                                  child: Text(' Rs. 120        ',style: TextStyle(fontSize: 20),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Card(
                                    color: Colors.orange,
                                    child: Row(
                                      children: [
                                        Icon(Icons.remove),
                                        CircleAvatar(
                                            radius: 15,
                                            backgroundColor: Colors.white,
                                            child: Text(' 1 ',style: TextStyle(fontSize: 20))),
                                        Icon(Icons.add)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 250,top: 35,bottom: 15),
                        child: Text('Ingredients',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [
                                Card(
                                  child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          foregroundImage: AssetImage('assets/images/Undhiyu.jpg',),
                                        ),
                                        Text('Mix Veg Sabji'),
                                      ]
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Card(
                                  child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          foregroundImage: AssetImage('assets/images/Khaman.jpg',),
                                        ),
                                        Text('Farsan'),
                                      ]
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Card(
                                  child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          foregroundImage: AssetImage('assets/images/Mix Kathol.jpg',),
                                        ),
                                        Text('Mix Kathol Sabji'),
                                      ]
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Card(
                                  child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          foregroundImage: AssetImage('assets/images/Shrikhand.jpg',),
                                        ),
                                        Text('ShriKhand'),
                                      ]
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Card(
                                  child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          foregroundImage: AssetImage('assets/images/Dal Bhat.jpg',),
                                        ),
                                        Text('Dal - Bhat'),
                                      ]
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Card(
                                  child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          foregroundImage: AssetImage('assets/images/Rotli.jpg',),
                                        ),
                                        Text('5 Roties'),
                                      ]
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Card(
                                  child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          foregroundImage: AssetImage('assets/images/Chhash.jpg',),
                                        ),
                                        Text('BhutterMilk'),
                                      ]
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Card(
                                  child: Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          foregroundImage: AssetImage('assets/images/Gulab Jamun.jpg',),
                                        ),
                                        Text('Dessert'),
                                      ]
                                  ),
                                ),
                                SizedBox(width: 10,),
                              ],
                            ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 300,top: 10,bottom: 5),
                        child: Text('About',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5.0,left: 25,right: 25),
                        child: Text('Gujarati Thali, a traditional culinary masterpiece from the western state of Gujarat in India, is far more than a mere collection of dishes on a plate. It is a cultural expression, a celebration of flavors, and a testament to the rich culinary heritage of the region.'),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 75,left: 105),
            child: CircleAvatar(
              radius: 100,
                foregroundImage: AssetImage('assets/images/GujaratiThali.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.arrow_back,color: Colors.black87,)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15.0,top: 15.0,left: 350.0,bottom: 15.0),
            child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.search)),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 300.0),
        child: Positioned(
          bottom: 25,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(25)
            ),
            child: Stack(
              children: [
                Row(
                    children: [
                      SizedBox(width: 15,),
                      Icon(Icons.shopping_bag_outlined,color: Colors.black,size: 35,),
                      SizedBox(width: 5,),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.white,
                          child: Text(' 1 '),
                        ),
                      )
                    ]
                  ),
                ],
              ),
          )
        ),
      ),
    );
  }
}
