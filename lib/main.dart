import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home: AbleCard(),
));


//stateful widget for the home screen
class AbleCard extends StatefulWidget {
  const AbleCard({Key? key}) : super(key: key);


  @override
  State<AbleCard> createState() => _AbleCardState();
}

class _AbleCardState extends State<AbleCard> {
  int age=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('my Bio'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            age+=1;
          });
        },
      child: Icon(
        Icons.add,
      ),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(

        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img.jpg'),
                radius: 40.0,
              ),
            ),

            Divider(height: 90.0, color: Colors.grey[800],),
            Text(
                'NAME',
                style:TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0
            )
            ),

            SizedBox(height: 10.0),

            Text(
                'Able Daniel Ofungi',
                style:TextStyle(
                    color: Colors.amberAccent[200],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0
                )
            ),


            SizedBox(height: 30.0,),


            Text(
                'Age',
                style:TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0
                )
            ),
            SizedBox(height: 10.0),
            Text(
                '$age',
                style:TextStyle(
                    color: Colors.amberAccent[200],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0
                )
            ),



            SizedBox(height: 30.0,),


            Text(
                'PROFESSION',
                style:TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0
                )
            ),

            SizedBox(height: 10.0),
            Text(
                'Computer Scientist',
                style:TextStyle(
                    color: Colors.amberAccent[200],
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0
                )
            ),

            SizedBox(height: 30.0,),

            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width:10.0),
                Text('ofungiable@gmail.com',
                style:TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18.0,
                  letterSpacing: 1.0,
                )
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

