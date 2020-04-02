import 'package:flutter/material.dart';

class NewPurchase extends StatelessWidget {

  createAlertDialog(BuildContext context){
    TextEditingController customController = TextEditingController();

    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("New Purchase"),
        content: TextField(
          controller: customController,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}