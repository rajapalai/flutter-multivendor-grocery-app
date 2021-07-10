import 'package:ecommerce_app/App_Bar/drawer.dart';
import 'package:ecommerce_app/App_Bar/drawer2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductBuy extends StatefulWidget {
  final int id;
  final String name;

  final String img;

  final String content;
  final String price;
  final String price1;
  ProductBuy(
      {this.id, this.name, this.content, this.img, this.price, this.price1});

  @override
  _ProductBuyState createState() => _ProductBuyState();
}

class _ProductBuyState extends State<ProductBuy> {
  int activeIndex = 0;
  String _singleValue = "Text alignment right";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Product',
          style: GoogleFonts.varelaRound(
            // color: ColorConstants.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart,
              size: 20,
            ),
          ),
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Hero(
                tag: widget.id.toString(),
                child: Image.asset(
                  widget.img,
                  height: 250,
                  width: 250,
                ),
              ),
              Image.asset(
                "assets/images/star.png",
                height: 50,
                width: 50,
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              widget.name,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  '\u{20B9}${widget.price}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(width: 10.0),
                Text(
                  widget.price1,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                Text(
                  ",12.5 % off",
                  style: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => FormPage()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 150,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.green),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "Add to Cart",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: RaisedButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => FormPage()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  textColor: Colors.black,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40.0,
                    width: 150,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.red),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "Buy Now",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Text(
              widget.content,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
