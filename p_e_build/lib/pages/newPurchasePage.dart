import 'package:flutter/material.dart';
import 'package:p_e_build/classes/purchases.dart';
import 'package:p_e_build/pages/purchase.dart';

class NewPurchasePage extends StatefulWidget {
  @override
  _NewPurchasePageState createState() => _NewPurchasePageState();
}

class Method {
  int id;
  String name;

  Method(this.id, this.name);
  static List<Method> getMethods(){
    return <Method>[
      Method(1, "Visa"),
      Method(2, "Cash"),
      Method(3, "MasterCard"),
      Method(4, "Apple Pay"),
      Method(5, "Amex"),
    ];
  }
}

class _NewPurchasePageState extends State<NewPurchasePage> {

  String name; 
  String price; 
  String store;
  String paymentMethod;
  String date;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<Method> _methods = Method.getMethods();
  List<DropdownMenuItem<Method>> _dropdownMenuItems;
  Method _selectedMethod;

  @override
  void initState(){
    _dropdownMenuItems = buildDropdownMenuItems(_methods);
    _selectedMethod = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Method>> buildDropdownMenuItems(List methods){
    List<DropdownMenuItem<Method>> items = List();
    for (Method method in methods){
      items.add(
        DropdownMenuItem(
          value: method,
          child: Text(method.name),
        ),
      );
    }
    return items;
  }

  Widget _buildName(){
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[300],
          ),
        ),
        labelText: ("Product"),
        labelStyle:TextStyle(color: Colors.grey[300], fontSize: 22, fontFamily: "Avenir", fontWeight: FontWeight.w500 )
      ),
      validator: (String value){
        if(value.isEmpty){
          return 'Product name is required';
        }
      },
      onSaved: (String _name){
        name = _name;
      }
    );
  }

  Widget _buildPrice(){
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[300],
          ),
        ),
        labelText: ("Price"),
        labelStyle:TextStyle(color: Colors.grey[300], fontSize: 22, fontFamily: "Avenir", fontWeight: FontWeight.w500 )
      ),
      validator: (String value){
        if(value.isEmpty){
          return 'Product price is required';
        }
      },
      onSaved: (String _price){
        price = _price;
      }
    );
  }

Widget _buildStore(){
    return TextFormField(
      cursorColor: Colors.white,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[300],
          ),
        ),
        labelText: ("Store"),
        labelStyle:TextStyle(color: Colors.grey[300], fontSize: 22, fontFamily: "Avenir", fontWeight: FontWeight.w500 )
      ),
      validator: (String value){
        if(value.isEmpty){
          return 'Product name is required';
        }
      },
      onSaved: (String _store){
        store = _store;
      }
    );
  }


Widget _buildDate(){
    return null;
  }

  onChangeDropdownItem(Method selectedMethod){
    setState((){
      _selectedMethod = selectedMethod;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Wrap(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, top:150),
              child: Text("New Purchase", 
                style: TextStyle(
                color: Colors.grey[300], 
                fontFamily: "Avenir", 
                fontSize: 38, 
                fontWeight: FontWeight.w800
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    _buildName(),
                    _buildPrice(),
                    _buildStore(),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Text(
                          "Payment Method",
                          style: TextStyle(color: Colors.grey[300], fontFamily: "Avenir", fontSize: 22, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 20.0),
                          Container(
                            padding: EdgeInsets.only(left: 25),
                            child: DropdownButton(
                              
                              focusColor: Colors.white,
                              value: _selectedMethod,
                              items: _dropdownMenuItems,
                              onChanged: onChangeDropdownItem,
                            ),
                          ),
                          //SizedBox(height: 20.0),
                          //Text("${_selectedMethod}"),
                        ],                     
                      ),
                    ),
                    
                    /*_buildDate(),
                    _buildPaymentMethod(),
                    _buildPrice(),
                    _buildStore(),*/
                    SizedBox(
                      height: 100,
                    ),
                    RaisedButton(
                      color: Colors.grey[850],
                      onPressed:(){
                        if(!_formKey.currentState.validate()){
                          return;
                        }                
                        _formKey.currentState.save();
                        print(name);
                        print(price);
                        print(store);
                        print(paymentMethod);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PurchasesPage()));
                        new Purchase(name, price, store, paymentMethod,date);
                      },
                      child: Text(
                        'Done',
                        style: TextStyle(color: Colors.grey[300])
                        ),
                    )
                  ],
                )
              ),
            )
          ],

        ),
      ),
    );
  }
}