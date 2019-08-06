import 'package:flutter/material.dart';
import "package:sample/main.dart";

class Productdetails extends StatefulWidget {
  final Product_detail_name;
  final Product_detail_new_price;
  final Product_detail_old_price;
  final Product_detail_picture;

Productdetails({
  this.Product_detail_name,
  this.Product_detail_new_price,
  this.Product_detail_old_price,
  this.Product_detail_picture
});

  _ProductdetailsState createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar(
        elevation: 0.2,
        backgroundColor: Colors.blue[900],
        title: InkWell(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage()));},
          child: Text("ShopApp")),
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
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.Product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(widget.Product_detail_name,
                  style:TextStyle(fontWeight:FontWeight.bold,fontSize: 16.0 ),),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("\$${widget.Product_detail_old_price}",
                        style:TextStyle(color: Colors.grey, decoration: TextDecoration.lineThrough)
                      ),),
                       Expanded(
                        child: new Text("\$${widget.Product_detail_new_price}",style:TextStyle(fontWeight:FontWeight.bold,color: Colors.red),
                      ),),
                    ],
                  ),

                ),
              ),
            ),
          ),
        //========the first buttons=========//

          Row(
            children: <Widget>[
              //====the size button======//
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context:context,builder:(context){
                      return new AlertDialog(title:new Text("size"),
                      
                      actions:<Widget>[
                        new MaterialButton( onPressed: (){
                          Navigator.of(context).pop(context);
                         },
                        child: new Text("close"),)
                      ],
                      );
                    }  );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("size"),
                      ),

                        Expanded(
                         child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                  
                ),
              ),


                         Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context:context,builder:(context){
                      return new AlertDialog(title:new Text("color"),
                      
                      actions:<Widget>[
                        new MaterialButton( onPressed: (){
                          Navigator.of(context).pop(context);
                         },
                        child: new Text("close"),)
                      ],
                      );
                    }  );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("color"),
                      ),

                        Expanded(
                         child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                  
                ),
              ),

                         Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context:context,builder:(context){
                      return new AlertDialog(title:new Text("Quantity"),
                      
                      actions:<Widget>[
                        new MaterialButton( onPressed: (){
                          Navigator.of(context).pop(context);
                         },
                        child: new Text("close"),)
                      ],
                      );
                    }  );
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text("Qty"),
                      ),

                        Expanded(
                         child: new Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                  
                ),
              ),
            ],
          ),


                  //========the second buttons=========//

          Row(
            children: <Widget>[
              //====the size button======//
              Expanded(
                child: MaterialButton(
                  onPressed: (){},
                    
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Buy now")
                  
                ),
              ),
              new IconButton(icon:Icon(Icons.add_shopping_cart,color: Colors.red,),onPressed: (){},),


              new IconButton(icon:Icon(Icons.favorite_border),color: Colors.red,onPressed: (){},),



            ],
          ),
          Divider(),
          new ListTile(
            title: new Text("product details"),
            subtitle: new Text("TOMMY HILFIGER is one of the world’s leading designer lifestyle brands and is internationally recognized for celebrating the essence of classic American cool style, featuring preppy with a twist designs. Founded in 1985, Tommy Hilfiger delivers premium styling, quality and value to consumers worldwide under the TOMMY HILFIGER and TOMMY JEANS brands, with a breadth of collections including HILFIGER COLLECTION, TOMMY HILFIGER TAILORED, TommyXGigi, men’s, women’s and kids’ sportswear, denim, accessories, and footwear. In addition, the brand is licensed for a range of products, including fragrances, eyewear, watches and home furnishings. Founder Tommy Hilfiger remains the company’s Principal Designer and provides leadership and direction for the design process."),

          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product name",style:TextStyle(color:Colors.grey),),
              ),
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text(widget.Product_detail_name),)  
            ],
            
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product brand",style:TextStyle(color:Colors.grey),),
              ),

         // REMEMBER TO CREATE PRODUCT BRAND//     
              Padding(padding: EdgeInsets.all(5.0),
              child: new Text("Tommy hilfiger"),)  
            ],
          ),
     Divider(),
     Padding(
     padding:const EdgeInsets.all(8.0),
     child:new Text("Similar_products"),
     ),



//similar products//
Container(
  height: 360.0,
  child: Similar_products(),
        ),
        ],
      ),
    );
   
  }
}

class Similar_products extends StatefulWidget {
 

  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

   var Product_list=[
  
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
          return Similar_single_prod(
            prod_name: Product_list[index]["name"],
            prod_picture: Product_list[index]["picture"],
            prod_old_price:  Product_list[index]["old_price"],
            prod_price:  Product_list[index]["price"],

          );
        });
    
  }
  
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;


  Similar_single_prod({
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
    