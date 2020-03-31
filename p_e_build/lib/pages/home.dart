import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 30, top: 90),
              height:220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: Colors.blueGrey[600],
              ),
              child: Row(
                children: <Widget>[
                  Text("My Pocket",
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontFamily: "Avenir",
                    fontSize: 38,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Container(),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.only(top: 190, left: MediaQuery.of(context).size.width*0.5-30),
              child: FloatingActionButton(
                child: Icon(Icons.add, size: 20,),
                backgroundColor: Colors.grey[800],
                onPressed: (){},
              ),
            ) 
          ],
        ),
      ),
    ); 
  }
}