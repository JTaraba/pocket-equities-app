import 'package:flutter/material.dart';
import 'package:p_e_build/widgets/balanceCards.dart';
import 'package:p_e_build/widgets/paymentsCard.dart';

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
              padding: EdgeInsets.only(left: 30, top: 125),
              child: Text("My Pocket",
              style: TextStyle(
                color: Colors.grey[300],
                fontFamily: "Avenir",
                fontSize: 38,
                fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left:30, top: 200 ),
              child: Text("My Balance",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontFamily: "Avenir",
                  fontSize: 21,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Row(children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 30, top: 240),
                child: Icon(Icons.attach_money,
                  color: Colors.grey[300],
                ),
              ),
              
            ],),
          ],
        ),
      ),
    ); 
  }

  /*List<Widget> getList(){
    List<BalanceCard> list = [];
      list.add(BalanceCard(title: "Balance:"));
      list.add(PaymentCard(title: "Payments"));
    return list;
  }*/
}