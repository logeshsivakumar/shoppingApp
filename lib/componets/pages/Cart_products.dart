import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class Cartproducts extends StatefulWidget {
  

  _CartproductsState createState() => _CartproductsState();
}

class _CartproductsState extends State<Cartproducts> {
  var Products_on_the_Cart=[
   {
     "name":"Shirts",
     "picture":"images/products/shirt1.jpg",
      "price":59,
      "size":"L",
      "color":"red",
      "quantity":1,

     },
     {
     "name":"jeans",
     "picture":"images/products/jean2.jpg",
       "price":59,
      "size":"L",
      "color":"blue",
      "quantity":1,
     },];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:Products_on_the_Cart.length ,
      itemBuilder:(Context,index){
       return Single_cart_products(
         Cart_prod_name: Products_on_the_Cart[index]["name"],
         Cart_prod_picture: Products_on_the_Cart[index]["picture"],
         Cart_prod_price: Products_on_the_Cart[index]["price"],
         Cart_prod_color: Products_on_the_Cart[index]["color"],
         Cart_prod_size: Products_on_the_Cart[index]["size"],
         Cart_prod_qty: Products_on_the_Cart[index]["qty"],
       );
      } );
    
  }
}


class Single_cart_products extends StatelessWidget {
  final Cart_prod_name;
  final Cart_prod_picture;
  final Cart_prod_price;
  final Cart_prod_color;
  final Cart_prod_size;
  final Cart_prod_qty;


  Single_cart_products({
  this.Cart_prod_name,
  this.Cart_prod_picture,
  this.Cart_prod_price,
  this.Cart_prod_color,
  this.Cart_prod_size,
  this.Cart_prod_qty,

  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(Cart_prod_picture,width: 100.0,height: 100.0,),
        title: new Text(Cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: new Text("Size:"),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: new Text(Cart_prod_size,style:TextStyle(color: Colors.red)),
              ),
 //===== section of product color=====//
              new Padding(padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0,8.0),
              child: new Text("color:"),),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: new Text(Cart_prod_color,style:TextStyle(color: Colors.red)),
              ),
/// section for the product===//
            
              ],
            ),

             new Container(
               alignment: Alignment.topLeft,
               child: new Text("\$${Cart_prod_price}",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold ,color: Colors.red),),
               )
          ],
        ),
        
      ),
    );
  }
}