import 'package:flutter/material.dart';
import 'package:p_e_build/widgets/balanceCards.dart';
import 'package:p_e_build/widgets/paymentsCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int dollarAmount = 0;

  void changeBalance(){
    setState((){
      dollarAmount += 1;
    });
  }

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
                boxShadow: [
                new BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 3.0,
                  ),
                ],
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
                onPressed: (){
                  changeBalance();
                },
              ),
            ), 
            Container( 
              child: BalanceCard(title: "Balance:"),
              padding: EdgeInsets.only(top: 270, ),
            ),
            Container(
              padding: EdgeInsets.only(top: 330, left: 95),
              child: Text(
                "$dollarAmount", 
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 40,
                  fontFamily: "Avenir",
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
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