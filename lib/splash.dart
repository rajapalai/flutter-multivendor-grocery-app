import 'package:ecommerce_app/login/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'login/logpage.dart';

// import 'package:gymApp/onbording.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 4);
    Future.delayed(
      d,
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Loginpage();
            },
          ),
          (route) => false,
        );
      },
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //       begin: Alignment.topRight,
            //       end: Alignment.bottomLeft,
            //       colors: [Colors.blue, Colors.deepPurple]),
            // ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                    child: Image.asset(
                  "assets/images/DBAsset.png",
                  height: 150,
                  width: 150,
                )),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'To DainikBazar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                SpinKitWave(
                  color: Colors.black,
                  size: 50.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
