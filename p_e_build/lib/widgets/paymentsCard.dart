import 'package:flutter/material.dart';

 class PaymentCard extends StatelessWidget {
   final String title;
   PaymentCard({this.title});
   @override
   Widget build(BuildContext context) {
     return Container(
       margin: EdgeInsets.only(bottom: 20, left: 10, right: 10,),
       padding: EdgeInsets.all(20),
       height: 130,
       decoration: BoxDecoration(
        color: Colors.grey[850],
        boxShadow: [
          new BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 3.0,
          )
        ]
       ),
       child: Row(
         children: <Widget>[
          Column(
            children: <Widget>[
              Text(title, style: TextStyle(color:Colors.grey[300], fontFamily: "Avenir", fontSize: 24,)),
            ],
          )
         ],
        ),
     );
   }
 }