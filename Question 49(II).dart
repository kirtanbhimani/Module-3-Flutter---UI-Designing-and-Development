import 'package:flutter/material.dart';

class Question_49_II extends StatelessWidget {
  const Question_49_II({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question_49_II'),
        backgroundColor: Colors.green,
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/riverfront.jpg'),
          const Padding(
            padding: EdgeInsets.only(top: 308.0),
            child: Column(
              children: [
                ListTile(
                  title: Text('Atal Bridge Sabarmati RivarFront',style: TextStyle(fontSize: 20),),
                  subtitle: Text('Ahmedabad, Gujarat',style: TextStyle(fontSize: 17),),
                  trailing: Icon(Icons.star,color: Colors.amber,),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 65.0,top: 10),
                      child: Positioned(
                          child: Icon(Icons.call,color: Colors.blue,size: 40,)
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 80.0,top: 10),
                      child: Positioned(
                        right: 10,
                        child : Icon(Icons.location_on,color: Colors.blue,size: 40,),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 80.0,top: 10),
                      child: Positioned(
                        right: 20,
                        child: Icon(Icons.share,color: Colors.blue,size: 40,),

                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 65.0),
                      child: Text('Call',style: TextStyle(fontSize: 25,color: Colors.blue),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 65.0),
                      child: Text('Route',style: TextStyle(fontSize: 25,color: Colors.blue),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 55.0),
                      child: Text('Share',style: TextStyle(fontSize: 25,color: Colors.blue),),
                    ),
                  ],
                ),

                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Atal Pedestrian Bridge is a pedestrian triangular truss bridge at Sabarmati Riverfront on Sabarmati river in Ahmedabad, Gujarat, India. It has a design inspired by kites. Inaugurated in 2022, it is 1300 metres long and 10 metres to 14 metres wide.',style: TextStyle(fontSize: 15),),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 15.0,right: 15.0),
                  child: Text('Senior citizens and children (3 to 12 years) will have to pay Rs 15. Entry for kids below 3-year age and differently-abled people are free. The Atal Bridge will remain open from 9 am to 9 pm for all pedestrians and cyclists. Visitors will be allowed on the bridge only for 30 minutes maximum.',style: TextStyle(fontSize: 15),),
                )
              ],
            ),
          ),

        ],
      ),

    );
  }
}
