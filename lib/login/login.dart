// import 'package:ecommerce_app/HomeDashBoard/dashboard.dart';
// import 'package:ecommerce_app/login/register.dart';
// import 'package:flutter/material.dart';

// import 'background.dart';

// class LoginScreen extends StatelessWidget {
//   String name, email, phone;
//   //TextController to read text entered in text field
//   TextEditingController password = TextEditingController();
//   TextEditingController confirmpassword = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       body: Background(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Container(
//               alignment: Alignment.centerLeft,
//               padding: EdgeInsets.symmetric(horizontal: 40),
//               child: Text(
//                 "LOGIN",
//                 style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     fontSize: 36),
//                 textAlign: TextAlign.left,
//               ),
//             ),
//             SizedBox(height: size.height * 0.03),
//             SizedBox(
//               height: size.height * 0.07,
//               width: size.width * 0.5,
//               child: TextField(
//                 autocorrect: true,
//                 decoration: InputDecoration(
//                   hintText: 'email',
//                   hintStyle: TextStyle(color: Colors.grey),
//                   filled: true,
//                   fillColor: Colors.white70,
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(80.0),
//                     borderSide: BorderSide(color: Colors.black, width: 2),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(80.0),
//                     borderSide: BorderSide(color: Colors.black, width: 2),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: size.height * 0.03),
//             SizedBox(
//               height: size.height * 0.07,
//               width: size.width * 0.5,
//               child: TextField(
//                 autocorrect: true,
//                 decoration: InputDecoration(
//                   hintText: 'email',
//                   hintStyle: TextStyle(color: Colors.grey),
//                   filled: true,
//                   fillColor: Colors.white70,
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(80.0),
//                     borderSide: BorderSide(color: Colors.black, width: 2),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(80.0),
//                     borderSide: BorderSide(color: Colors.black, width: 2),
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerRight,
//               margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//               child: TextFormField(
//                 keyboardType: TextInputType.text,
//                 decoration: InputDecoration(
//                   hintText: 'email',
//                   hintStyle: TextStyle(color: Colors.grey),
//                   filled: true,
//                   fillColor: Colors.white70,
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(80.0),
//                     borderSide: BorderSide(color: Colors.black, width: 2),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(80.0),
//                     borderSide: BorderSide(color: Colors.black, width: 2),
//                   ),
//                 ),
//                 validator: (String value) {
//                   if (value.isEmpty) {
//                     return 'Please a Enter';
//                   }
//                   if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
//                       .hasMatch(value)) {
//                     return 'Please a valid Email';
//                   }
//                   return null;
//                 },
//                 onSaved: (String value) {
//                   email = value;
//                 },
//               ),
//             ),
//             SizedBox(height: size.height * 0.05),
//             Container(
//               alignment: Alignment.centerRight,
//               margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//               child: RaisedButton(
//                 onPressed: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => DashboardScreen()));
//                 },
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(80.0)),
//                 textColor: Colors.white,
//                 padding: const EdgeInsets.all(0),
//                 child: Container(
//                   alignment: Alignment.center,
//                   height: 50.0,
//                   width: size.width * 0.5,
//                   decoration: new BoxDecoration(
//                       borderRadius: BorderRadius.circular(80.0),
//                       color: Colors.green),
//                   padding: const EdgeInsets.all(0),
//                   child: Text(
//                     "SIGN IN",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               alignment: Alignment.centerRight,
//               margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
//               child: GestureDetector(
//                 onTap: () => {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => RegisterScreen()))
//                 },
//                 child: Text(
//                   "Don't Have an Account? Sign up",
//                   style: TextStyle(
//                       fontSize: 12,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF2661FA)),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
