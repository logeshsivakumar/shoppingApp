import 'package:flutter/material.dart';
import 'package:sample/pages/Product_details.dart';


class Products extends StatefulWidget {

  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

   var Product_list=[
   {
     "name":"Shirts",
     "picture":"images/products/shirt1.jpg",
     "old_price":99,
     "price":59,
     },
     {
     "name":"jeans",
     "picture":"images/products/jean2.jpg",
     "old_price":89,
     "price":39,
     },
     {
     "name":"casualshoes",
     "picture":"images/products/lof1.jpg",
     "old_price":79,
     "price":39,
     },
     {
     "name":"shorts",
     "picture":"images/products/shorts1.jpg",
     "old_price":99,
     "price":49,
     },
     {
     "name":"sunglasses",
     "picture":"images/products/sg1.jpg",
     "old_price":84,
     "price":49,
     },
      {
     "name":"watches",
     "picture":"images/products/w1.jpg",
     "old_price":89,
     "price":69,
     },


 ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount:Product_list.length ,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2),
        itemBuilder:(BuildContext context,int index){
          return Single_prod(
            prod_name: Product_list[index]["name"],
            prod_picture: Product_list[index]["picture"],
            prod_old_price:  Product_list[index]["old_price"],
            prod_price:  Product_list[index]["price"],

          );
        });
    
  }
} 
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;


  Single_prod({
  this.prod_name,
  this.prod_picture,
  this.prod_old_price,
  this.prod_price,

  });


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag:prod_name,
        child:Material(
          child:InkWell(
            onTap: ()=>Navigator.of(context).push(
              new MaterialPageRoute(
                //passing the values  from product to product details
                builder: (context)=>new Productdetails(
                  Product_detail_name:prod_name,
                  Product_detail_new_price:prod_price,
                  Product_detail_old_price:prod_old_price,
                  Product_detail_picture:prod_picture,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white,
                child: new Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                    ),

                     new Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,),),
                      
                  ],
                ) ,
             
              ),
              child:Image.asset(prod_picture,
              fit:BoxFit.cover),
          ),
          ),
          ),
    ),
    );
  }
}
    

 