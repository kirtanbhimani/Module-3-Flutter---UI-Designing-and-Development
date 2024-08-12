import 'package:flutter/material.dart';

class Question_12_I extends StatelessWidget {
  const Question_12_I({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant'),
        backgroundColor: Colors.amber,
      ),
      body: Card(
        color: Colors.grey.shade200,
        child: Stack(
          children: [
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
            Padding(
              padding: const EdgeInsets.only(top: 75.0),
              child: ListTile(
                title: Text('Restaurant',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text('Orange Sandwiches is delicious'),
                ),
                trailing: Card(
                      child: Image.asset('assets/images/K.jpg',)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 315.0,top: 160),
              child: Icon(Icons.star_border,color: Colors.amber,size: 28,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 345.0,top: 160),
              child: Text('4.7',style: TextStyle(fontSize: 23),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 125,left: 10),
              child: Card(
                color: Colors.grey,
                  child: Text('  20-30 min  ',style: TextStyle(fontSize: 15,color: Colors.white))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130,left: 115),
              child: Text('2.4 km Restaurant',style: TextStyle(color: Colors.grey),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 200,left: 10),
                      child: Card(
                          color: Colors.amber,
                          child: Text(' Recommend ',style: TextStyle(fontSize: 20,color: Colors.white))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200,left: 5),
                      child: Card(
                          color: Colors.white,
                          child: Text(' Popular ',style: TextStyle(fontSize: 20,color: Colors.black))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200,left: 10),
                      child: Card(
                          color: Colors.white,
                          child: Text(' Noodles ',style: TextStyle(fontSize: 20,color: Colors.black))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 200,left: 10),
                      child: Card(
                          color: Colors.white,
                          child: Text(' Pizza ',style: TextStyle(fontSize: 20,color: Colors.black))),
                    ),
                  ]
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top: 250,right: 8,left: 8),
                child: Container(
                  height: 125,
                  width: 400,
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 100,
                              width: 100,
                              child: CircleAvatar(
                               radius: 150,
                                 foregroundImage: AssetImage('assets/images/GujaratiThali.jpg'),
                              )
                            ),
                          title: Text('Gujarati Thali',style: TextStyle(fontSize: 20),),
                          subtitle: Text('No.1 in sales',style: TextStyle(color: Colors.amber,fontSize: 15),),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 65.0),
                          child: Text('Rs.120',style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ],
                    ),
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 390,right: 8,left: 8),
              child: Container(
                height: 125,
                width: 400,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                            height: 100,
                            width: 100,
                            child: CircleAvatar(
                              radius: 150,
                              foregroundImage: AssetImage('assets/images/PanjabiThali.jpg'),
                            )
                        ),
                        title: Text('Panjabi Thali',style: TextStyle(fontSize: 20),),
                        subtitle: Text('No.1 in sales',style: TextStyle(color: Colors.amber,fontSize: 15),),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 65.0),
                        child: Text('Rs.150',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 530,right: 8,left: 8),
              child: Container(
                height: 125,
                width: 400,
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                            height: 100,
                            width: 100,
                            child: CircleAvatar(
                              radius: 150,
                              foregroundImage: AssetImage('assets/images/KathiyavadiThali.jpg'),
                            )
                        ),
                        title: Text('Kathiyavadi Thali',style: TextStyle(fontSize: 20),),
                        subtitle: Text('No.1 in sales',style: TextStyle(color: Colors.amber,fontSize: 15),),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 65.0),
                        child: Text('Rs.100',style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 725,left: 15),
              child: Icon(Icons.circle_outlined,color: Colors.amber,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 728,left: 45),
              child: Icon(Icons.circle_rounded,color: Colors.grey,size: 17,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 728,left: 75),
              child: Icon(Icons.circle_rounded,color: Colors.grey,size: 17,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 728,left: 105),
              child: Icon(Icons.circle_rounded,color: Colors.grey,size: 17,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 700,left: 300,right:10,bottom: 10),
              child: CircleAvatar(
                radius: 75,
                  backgroundColor: Colors.amber,
                  child: Icon(Icons.shopping_bag_outlined,color: Colors.black,size: 35,)),
            )
          ],
        ),
      ),
    );
  }
}
