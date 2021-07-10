// import 'package:ecommerce_app/HomeDashBoard/dashboard.dart';
// import 'package:ecommerce_app/login/background.dart';
// import 'package:ecommerce_app/login/login%20form/signin.dart';
// import 'package:flutter/material.dart';

// class OTP extends StatefulWidget {
//   OTP({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _OTPState createState() => _OTPState();
// }

// class _OTPState extends State<OTP> {
//   String _otp = "";
//   var _otpSymbols = ["\u{25CB}", "\u{25CB}", "\u{25CB}", "\u{25CB}"];
//   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

//   void _handleKeypadClick(String val) {
//     setState(() {
//       if (_otp.length < 4) {
//         _otp = _otp + val;
//         for (int i = 0; i < _otp.length; i++) _otpSymbols[i] = "\u{25CF}";
//       }
//     });
//   }

//   void _handleKeypadDel() {
//     setState(() {
//       if (_otp.length > 0) {
//         _otp = _otp.substring(0, _otp.length - 1);
//         for (int i = _otp.length; i < 4; i++) _otpSymbols[i] = "\u{25CB}";
//       }
//     });
//   }

//   void _handleSubmit() {
//     if (_otp.length == 4)
//       _scaffoldKey.currentState.showSnackBar(SnackBar(
//         content: Text('Entered OTP is $_otp'),
//       ));
//     else
//       _scaffoldKey.currentState.showSnackBar(SnackBar(
//         content: Text('OTP has to be of 4 digits'),
//         backgroundColor: Colors.red,
//       ));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Container(
//                     margin: const EdgeInsets.only(top: 40),
//                     child: Center(
//                       child: Text(
//                         "Verify Your Account",
//                         style: TextStyle(color: Colors.grey, fontSize: 25),
//                       ),
//                     ),
//                   ),
//                   Container(
//                       margin: const EdgeInsets.only(top: 30, bottom: 20),
//                       child: Text(
//                         'Enter the OTP received',
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold),
//                       )),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: <Widget>[
//                       Text(
//                         _otpSymbols[0],
//                         style: TextStyle(
//                             fontSize: 30, fontWeight: FontWeight.w200),
//                       ),
//                       Text(
//                         _otpSymbols[1],
//                         style: TextStyle(
//                             fontSize: 30, fontWeight: FontWeight.w200),
//                       ),
//                       Text(
//                         _otpSymbols[2],
//                         style: TextStyle(
//                             fontSize: 30, fontWeight: FontWeight.w200),
//                       ),
//                       Text(
//                         _otpSymbols[3],
//                         style: TextStyle(
//                             fontSize: 30, fontWeight: FontWeight.w200),
//                       )
//                     ],
//                   )
//                 ]),
//             Container(
//               color: Colors.green[100],
//               padding: EdgeInsets.only(top: 10),
//               child: Column(children: <Widget>[
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: <Widget>[
//                       FlatButton(
//                         onPressed: () {
//                           _handleKeypadClick('1');
//                         },
//                         child: Text('1',
//                             style: TextStyle(
//                                 fontSize: 40,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w400)),
//                       ),
//                       FlatButton(
//                         onPressed: () {
//                           _handleKeypadClick('2');
//                         },
//                         child: Text('2',
//                             style: TextStyle(
//                                 fontSize: 40,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w400)),
//                       ),
//                       FlatButton(
//                         onPressed: () {
//                           _handleKeypadClick('3');
//                         },
//                         child: Text('3',
//                             style: TextStyle(
//                                 fontSize: 40,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w400)),
//                       )
//                     ]),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: <Widget>[
//                       FlatButton(
//                         onPressed: () {
//                           _handleKeypadClick('4');
//                         },
//                         child: Text('4',
//                             style: TextStyle(
//                                 fontSize: 40,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w400)),
//                       ),
//                       FlatButton(
//                         onPressed: () {
//                           _handleKeypadClick('5');
//                         },
//                         child: Text('5',
//                             style: TextStyle(
//                                 fontSize: 40,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w400)),
//                       ),
//                       FlatButton(
//                         onPressed: () {
//                           _handleKeypadClick('6');
//                         },
//                         child: Text('6',
//                             style: TextStyle(
//                                 fontSize: 40,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w400)),
//                       )
//                     ]),
//                 Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: <Widget>[
//                       FlatButton(
//                         onPressed: () {
//                           _handleKeypadClick('7');
//                         },
//                         child: Text('7',
//                             style: TextStyle(
//                                 fontSize: 40,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w400)),
//                       ),
//                       FlatButton(
//                         onPressed: () {
//                           _handleKeypadClick('8');
//                         },
//                         child: Text('8',
//                             style: TextStyle(
//                                 fontSize: 40,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w400)),
//                       ),
//                       FlatButton(
//                         onPressed: () {
//                           _handleKeypadClick('9');
//                         },
//                         child: Text('9',
//                             style: TextStyle(
//                                 fontSize: 40,
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w400)),
//                       )
//                     ]),
//                 Container(
//                   margin: const EdgeInsets.only(bottom: 10.0),
//                   child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: <Widget>[
//                         FlatButton(
//                           onPressed: () {
//                             _handleKeypadDel();
//                           },
//                           child: Text('\u{232b}',
//                               style: TextStyle(
//                                   fontSize: 40,
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w400)),
//                         ),
//                         FlatButton(
//                           onPressed: () {
//                             _handleKeypadClick('0');
//                           },
//                           child: Text('0',
//                               style: TextStyle(
//                                   fontSize: 40,
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w400)),
//                         ),
//                         FlatButton(
//                           onPressed: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => SigninPage()));
//                           },
//                           child: Text('\u{2713}',
//                               style: TextStyle(
//                                   fontSize: 40,
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w400)),
//                         )
//                       ]),
//                 ),
//               ]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:ecommerce_app/HomeDashBoard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:otp_screen/otp_screen.dart';

class Otp extends StatelessWidget {
  // This widget is the root of your application.

  Future<String> validateOtp(String otp) async {
    await Future.delayed(Duration(milliseconds: 2000));
    if (otp == "12345") {
      return null;
    } else {
      return "The entered Otp is wrong";
    }
  }

  void moveToNextScreen(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => DashboardScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpScreen.withGradientBackground(
        topColor: Color(0xFFcc2b5e),
        bottomColor: Color(0xFF753a88),
        otpLength: 5,
        validateOtp: validateOtp,
        routeCallback: moveToNextScreen,
        themeColor: Colors.white,
        titleColor: Colors.white,
        title: "Phone Number Verification",
        subTitle: "Enter the otp sent to your\n device",
        icon: Image.asset(
          'assets/otp.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class SuccessfulOtpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            "Otp verification successful",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
