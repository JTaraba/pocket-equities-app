import 'package:flutter/material.dart';
import 'package:p_e_build/widgets/addNewPurchase.dart';
import 'package:p_e_build/widgets/purchasesCard.dart';
import './purchase.dart';
import 'package:p_e_build/classes/purchases.dart';
import './newPurchasePage.dart';

class PurchasesPage extends StatefulWidget {

  

  @override
  _PurchasesPageState createState() => _PurchasesPageState();
}

class _PurchasesPageState extends State<PurchasesPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Stack(
          children: <Widget> [
            Container(
              padding: EdgeInsets.only(left: 40, top: 80,),
              child: Text(
                "Purchases", 
                style: TextStyle(
                  color: Colors.grey[300], 
                  fontFamily: "Avenir", 
                  fontSize: 38, 
                  fontWeight: FontWeight.w800
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left:220, top: 90),
              child: Icon(
                Icons.add_shopping_cart, color: Colors.grey[300],
                size: 30,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 320, top: 80),
              child: FlatButton(
                //backgroundColor: Colors.grey[900],
                child: Icon(
                  Icons.menu,
                  color: Colors.grey[300],
                  size: 30,
                ),
                onPressed: (){},
              ),
            ),
            Container(
              child: ListView(
                padding: EdgeInsets.only(top:180),
                children: getList(),
              ),
            ),
            Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.only(top: 720, left: 320),
              child: FloatingActionButton(
                backgroundColor: Colors.grey[850],
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewPurchasePage()));
                  /*createAlertDialog(context).then((onValue){
                    SnackBar mySnackbar = SnackBar(content: Text("Purchase $onValue Created"));
                    Scaffold.of(context).showSnackBar(mySnackbar);
                  });*/
                },
                child: Icon(Icons.add, color: Colors.grey[300], size: 20),
              ),
            )
          ],
        ),
      ),
      
    );
  }

  List<Widget> getList(){
    List<PurchaseCard> list = [];
    list.add(PurchaseCard());
    return list;
  }

  /*Future <String> createAlertDialog(BuildContext context){
    TextEditingController customController = TextEditingController();

    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("New Purchase"),
        content: TextField(
          controller: customController,
        ),
        actions: <Widget>[
          MaterialButton(
            elevation: 5,
            child: Text("Done"),
            onPressed: (){
              PurchaseCard();
              Navigator.of(context).pop(customController.text.toString());
              //Purchase a = new Purchase();
            },
          )
        ],
      );
    });*/
  //}


}