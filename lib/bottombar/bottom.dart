import 'package:flutter/material.dart';

// Stateful widget created
class BottomBar2 extends StatefulWidget {
  @override
  _BottomBar2State createState() => _BottomBar2State();
}

class _BottomBar2State extends State<BottomBar2> {
// index given for tabs
  // int currentIndex = 0;
  // setBottomBarIndex(index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floating action button in center
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setBottomBarIndex(4);
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // bottom app bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // button 1
              IconButton(
                icon: Icon(
                  Icons.home,
                  // color: currentIndex == 0 ? Colors.green : Colors.grey,
                ),
                onPressed: () {
                  // setBottomBarIndex(0);
                },
                splashColor: Colors.white,
              ),

              // button 2
              IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    // color: currentIndex == 1 ? Colors.green : Colors.grey,
                  ),
                  onPressed: () {
                    // setBottomBarIndex(1);
                  }),
              SizedBox.shrink(),

              // button 3
              IconButton(
                  icon: Icon(
                    Icons.person,
                    // color: currentIndex == 2 ? Colors.green : Colors.grey,
                  ),
                  onPressed: () {
                    // setBottomBarIndex(2);
                  }),

              // button 4
              IconButton(
                  icon: Icon(
                    Icons.insert_drive_file,
                    // color: currentIndex == 3 ? Colors.green : Colors.grey,
                  ),
                  onPressed: () {
                    // setBottomBarRIndex(3);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
