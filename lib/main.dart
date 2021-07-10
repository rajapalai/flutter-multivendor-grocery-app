import 'package:ecommerce_app/login/login%20form/otp.dart';
import 'package:ecommerce_app/login/login%20form/signin.dart';
import 'package:ecommerce_app/profile/profile.dart';
import 'package:ecommerce_app/splash.dart';
import 'package:flutter/material.dart';

import 'HomeDashBoard/dashboard.dart';

import 'HomeDashBoard/productPages/fruits/fruits.dart';

import 'HomeDashBoard/productPages/fruits/fruitsarms.dart';
import 'HomeDashBoard/productPages/fruits/fruitsdetails.dart';
import 'HomeDashBoard/productPages/order.dart';
import 'HomeDashBoard/productPages/wishlist.dart';
import 'RateusPage/myreviewpage.dart';
import 'login/login form/formPage.dart';
import 'login/logpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen());
  }
}
