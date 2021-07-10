import 'package:ecommerce_app/HomeDashBoard/productPages/order.dart';
import 'package:ecommerce_app/RateusPage/myreviewpage.dart';
import 'package:ecommerce_app/login/login%20form/signin.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                title: Text(
                  'Log In',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => DashboardScreen()));
                },
                // enabled: false,
                selected: true,
              ),

              ListTile(
                leading: Icon(
                  Icons.add_shopping_cart_rounded,
                  color: Colors.white,
                ),
                title: Text(
                  'My Orders',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Order()));
                },
                // enabled: false,
                selected: true,
              ),
              // Divider(),
              ListTile(
                leading: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
                title: Text(
                  'My Cart',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Order()));
                },
                // enabled: false,
                selected: true,
              ),
              // Divider(),
              ListTile(
                leading: Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'My Wallet',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => ActivityRecords()));
                },
                // enabled: false,
                selected: true,
              ),
              // Divider(),
              ListTile(
                leading: Icon(
                  Icons.notification_important,
                  color: Colors.white,
                ),
                title: Text(
                  'Notification',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => CompletedSession()));
                },
                // enabled: false,
                selected: true,
              ),
              // Divider(),
              ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Sign Out',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SigninPage()));
                },
                // enabled: false,
                selected: true,
              ),
              // Divider(),
              ListTile(
                leading: Icon(
                  Icons.account_box_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Refer your friends',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => LoyalityPoint()));
                },
                // enabled: false,
                selected: true,
              ),
              // Divider(),
              ListTile(
                leading: Icon(
                  Icons.admin_panel_settings_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Customer Support',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) => Signup()));
                },
                // enabled: false,
                selected: true,
              ),
              ListTile(
                leading: Icon(
                  Icons.thumb_up,
                  color: Colors.white,
                ),
                title: Text(
                  'Rate Us',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyReviewPage()));
                },
                // enabled: false,
                selected: true,
              ),
              ListTile(
                leading: Icon(
                  Icons.warning,
                  color: Colors.white,
                ),
                title: Text(
                  'About Us',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) => Signup()));
                },
                // enabled: false,
                selected: true,
              ),
              // Divider(),
              // Expanded(
              //   child: Align(
              //     alignment: Alignment.bottomCenter,
              //     child: ListTile(
              //       leading: Icon(Icons.close),
              //       title: Text('Close'),
              //       onTap: () {
              //         Navigator.of(context).pop();
              //         Navigator.of(context)
              //         .push(MaterialPageRoute(builder: (context) => ItemsOrder()));
              //       },
              //       // enabled: false,
              //       selected: true,
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
