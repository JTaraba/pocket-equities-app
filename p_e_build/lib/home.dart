import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.blue,
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(180.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2.0),
                    blurRadius: 4.0,
                  ),
                ]
              ),
              child: AppBar(
                /*title: Text(
                  'MY POCKET', 
                  style: TextStyle(
                    fontSize:28,
                    fontWeight: FontWeight.w400,
                    
                  ),
                ),
                centerTitle: true,
                elevation: 1.0,*/
                //borderRadius: BorderRadius.circular(50),
                backgroundColor: Colors.blueGrey[600],
              ),
            ),
          ),
        ), // decoration: new BoxDecoration()
      ),
    );
  }
}
