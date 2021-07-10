import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.transparent,
        notchMargin: 6.0,
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0)),
              color: Colors.black),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 20.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Image.asset("assets/images/noti.png"),
                onPressed: () {
                  setState(() {
                    // _myPage.jumpToPage(0);
                  });
                },
              ),
              IconButton(
                iconSize: 20.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Image.asset("assets/images/bag.png"),
                onPressed: () {
                  setState(() {
                    // _myPage.jumpToPage(1);
                  });
                },
              ),
              IconButton(
                iconSize: 20.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Image.asset("assets/images/love.png"),
                onPressed: () {
                  setState(() {
                    // _myPage.jumpToPage(2);
                  });
                },
              ),
              IconButton(
                iconSize: 20.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Image.asset("assets/images/prof.png"),
                onPressed: () {
                  setState(() {
                    // _myPage.jumpToPage(3);
                  });
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 70.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Image.asset(
                'assets/images/DBAsset.png',
              ),
              elevation: 0.1,
              onPressed: () {}),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [Text('Checkout')],
        ),
      ),
    );
  }
}
