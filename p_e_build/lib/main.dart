import 'package:flutter/material.dart';
import './pages/home.dart';
import './pages/testPage.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Avenir'),
      home: DefaultTabController(
        length: 3,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                child: TestPage(),
              ),
              new Container(
                color: Colors.grey[850],
              ), 
              new Container(
                color: Colors.grey[850],
              ),
            ],
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                blurRadius: 3.0,
                color:Colors.grey[850],
                spreadRadius: 5.0
                ),
              ]
            ),
            child: new TabBar(
              tabs: [
                Tab(
                  icon: new Icon(Icons.account_balance_wallet),
                ),
                Tab(
                  icon: new Icon(Icons.account_balance),
                ),
                Tab(icon: new Icon(Icons.settings),)
              ],
              labelColor: Colors.grey[200],
              unselectedLabelColor: Colors.grey[400],
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(5.0),
              indicatorColor: Colors.blueGrey,
              labelPadding: EdgeInsets.all(15),   
            ),
          ),
          backgroundColor: Colors.grey[850],
        ),
      ),
    );
  }
}

