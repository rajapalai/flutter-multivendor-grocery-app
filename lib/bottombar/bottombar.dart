import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.transparent,
        elevation: 9.0,
        clipBehavior: Clip.antiAlias,
        child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0)),
                color: Colors.black),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width / 2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.notifications_active,
                              color: Color(0xFFEF7532)),
                          Icon(Icons.shopping_basket, color: Color(0xFF676E79))
                        ],
                      )),
                  Container(
                    height: 80,
                    child: Center(
                      heightFactor: 0.6,
                      child:
                          Icon(Icons.favorite_border, color: Color(0xFF676E79)),
                    ),
                  ),
                  Container(
                      height: 50.0,
                      width: MediaQuery.of(context).size.width / 2 - 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Icon(Icons.favorite_border, color: Color(0xFF676E79)),
                          Icon(Icons.account_circle, color: Color(0xFF676E79))
                        ],
                      )),
                ])));
  }
}
