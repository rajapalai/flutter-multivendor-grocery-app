import 'package:ecommerce_app/HomeDashBoard/dashboard.dart';
import 'package:ecommerce_app/login/background.dart';
import 'package:flutter/material.dart';

import 'inputDecoration.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String name, email, phone;

  //TextController to read text entered in text field
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: Image.asset(
                    "assets/images/DBAsset.png",
                    height: 90,
                    width: 90,
                  )),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 60,
                    width: size.width * 0.8,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      decoration:
                          buildInputDecoration(Icons.email, "Email / Phone"),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter Email';
                        }
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return 'Please a valid Email';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        email = value;
                      },
                    ),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    height: 60,
                    width: size.width * 0.8,
                    child: TextFormField(
                      controller: password,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration: buildInputDecoration(Icons.lock, "Password"),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    height: 60,
                    width: size.width * 0.8,
                    child: TextFormField(
                      controller: confirmpassword,
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      decoration:
                          buildInputDecoration(Icons.lock, "Confirm Password"),
                      validator: (String value) {
                        if (value.isEmpty) {
                          return 'Please re-enter password';
                        }
                        print(password.text);

                        print(confirmpassword.text);

                        if (password.text != confirmpassword.text) {
                          return "Password does not match";
                        }

                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: size.height * 0.05,
                    width: size.width * 0.3,
                    child: RaisedButton(
                      color: Colors.green,
                      onPressed: () {
                        if (_formkey.currentState.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DashboardScreen()));

                          return;
                        } else {
                          print("UnSuccessfull");
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      textColor: Colors.white,
                      child: Text("Sign up"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
