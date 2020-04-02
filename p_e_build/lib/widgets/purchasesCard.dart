import 'package:flutter/material.dart';

class PurchaseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(bottom: 20, left: 15, right: 15,),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        boxShadow: [
          new BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 3.0,
          )
        ]
      )
    );
  }
}