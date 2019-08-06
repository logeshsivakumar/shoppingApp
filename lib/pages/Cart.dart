import 'package:flutter/material.dart';

import 'package:sample/componets/pages/Cart_products.dart';
class Cart extends StatefulWidget {


  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.blue[900],
        title: Text("Cart"),
        actions: <Widget>[
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
         
        ],
      ),

      body: new Cartproducts(),
bottomNavigationBar: new Container(
  height: 60.0,
  color: Colors.white,
  child: Row(
    children: <Widget>[
      Expanded(
        child: ListTile(
          title: new Text("Total"),
          subtitle: new Text("\$30"),

        ),
      ),

      Expanded(
        child: new MaterialButton( onPressed:(){}, 
        child:new Text('Buy',style: TextStyle(color:Colors.white,fontSize: 28.0),),
        color:Colors.red ,
        height: 60.0,
         ),
        
      )
    ],
  ),
),
    ); 
  }
}