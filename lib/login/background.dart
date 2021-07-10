import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Container(
          //   child: Positioned(
          //     top: 0,
          //     right: 0,
          //     child: Image.asset("assets/top1.png", color: Colors.green),
          //     //  Image.asset("assets/images/top1.png", width: size.width),
          //   ),
          // ),

          Positioned(
            top: -2,
            right: 0,
            child: Image.asset("assets/top2.png", color: Colors.green),
          ),
          // Positioned(
          //   top: 50,
          //   right: 30,
          //   child:
          //       Image.asset("assets/images/main.png", width: size.width * 0.35),
          // ),
          Positioned(
            bottom: -2,
            left: 0,
            child: Image.asset('assets/bottom1.png', color: Colors.green),
          ),

          // Positioned(
          //   bottom: 0,
          //   right: 0,
          //   child: Image.asset("assets/bottom2.png", color: Colors.green),
          // ),
          child
        ],
      ),
    );
  }
}
