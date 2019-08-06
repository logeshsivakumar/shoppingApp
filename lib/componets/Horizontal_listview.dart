
import 'package:flutter/material.dart';

class Horizontallist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          category(
            image_location: "images/hlist/c1.png",
            image_caption: "Tshirt",
          ),
          category(
            image_location: "images/hlist/shoes.png",
            image_caption: "Shoes",
          ),
          category(
            image_location: "images/hlist/shirt.png",
            image_caption: "Shirt",
          ),
          category(
            image_location: "images/hlist/jean.png",
            image_caption: "Pants",
          ),
          category(
            image_location: "images/hlist/watches.png",
            image_caption: "Watches",
          ),
        ],
      ),
    );
  }
}

class category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  category({
    this.image_location,
    this.image_caption,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption,style: new TextStyle(fontSize:12.0),),
              )),
        ),
      ),
    );
  }
}
