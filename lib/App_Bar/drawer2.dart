import 'package:flutter/material.dart';

class MyDrawer2 extends StatefulWidget {
  @override
  _MyDrawer2State createState() => _MyDrawer2State();
}

class _MyDrawer2State extends State<MyDrawer2> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.green[400],
        child: SingleChildScrollView(
          // padding: EdgeInsets.only(top: 50.0, left: 40.0),
          scrollDirection: Axis.vertical,
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Title(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0, left: 30.0),
                  child: Text('My Cart',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    constraints: BoxConstraints(
                      maxHeight: double.infinity,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Item',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Price',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Divider(thickness: 2),
                            SizedBox(height: 20.0),
                            Divider(thickness: 2),
                            SizedBox(height: 20.0),
                            Divider(thickness: 2),
                            SizedBox(height: 20.0),
                            Divider(thickness: 2),
                            SizedBox(height: 20.0),
                            Divider(thickness: 2),
                            SizedBox(height: 20.0),
                            Divider(thickness: 2),
                            SizedBox(height: 20.0),
                            SizedBox(height: 50.0),
                            ElevatedButton(
                              child: Text("chechout"),
                              onPressed: () => print("it's pressed"),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green[400],
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                              ),
                            ),
                            SizedBox(height: 100.0),
                          ],
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
