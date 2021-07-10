import 'package:carousel_pro/carousel_pro.dart';
import 'package:ecommerce_app/App_Bar/drawer.dart';
import 'package:ecommerce_app/App_Bar/drawer2.dart';
import 'package:ecommerce_app/HomeDashBoard/productPages/fruits/fruits.dart';
import 'package:ecommerce_app/HomeDashBoard/productPages/fruits/fruitsarms.dart';

import 'package:ecommerce_app/HomeDashBoard/productPages/vegitablePage/producthome.dart';
import 'package:ecommerce_app/HomeDashBoard/productPages/vegitablePage/productshop.dart/producthome.dart';
import 'package:ecommerce_app/HomeDashBoard/productPages/vegitablePage/vegitable.dart';
import 'package:ecommerce_app/HomeDashBoard/productPages/wishlist.dart';
import 'package:ecommerce_app/bottombar/bottom.dart';
import 'package:ecommerce_app/bottombar/bottombar.dart';
import 'package:ecommerce_app/login/login%20form/inputDecoration.dart';
import 'package:ecommerce_app/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import 'datalist.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List list = [
    "Apple",
    "orange",
    "pinaple",
    "coconut",
  ];

  int _value = 1;
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure to Exit ?'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    setState(() {});
                    Navigator.of(context).pop(false);
                  },
                  child: Text('No')),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text('Yes')),
            ],
          ),
        );
      },
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.transparent,
          notchMargin: 6.0,
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0)),
                color: Colors.black),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  iconSize: 20.0,
                  padding: EdgeInsets.only(left: 28.0),
                  icon: Image.asset("assets/images/noti.png"),
                  onPressed: () {
                    setState(() {
                      // _myPage.jumpToPage(0);
                    });
                  },
                ),
                IconButton(
                  iconSize: 20.0,
                  padding: EdgeInsets.only(right: 28.0),
                  icon: Image.asset("assets/images/bag.png"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FruitsHome()));
                  },
                ),
                IconButton(
                  iconSize: 20.0,
                  padding: EdgeInsets.only(left: 28.0),
                  icon: Image.asset("assets/images/love.png"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Wishlist()));
                  },
                ),
                IconButton(
                  iconSize: 20.0,
                  padding: EdgeInsets.only(right: 28.0),
                  icon: Image.asset("assets/images/prof.png"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                )
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          height: 70.0,
          width: 65.0,
          child: FittedBox(
            child: FloatingActionButton(
                backgroundColor: Colors.white,
                child: Image.asset(
                  'assets/images/DBAsset.png',
                ),
                elevation: 0,
                onPressed: () {}),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              IconButton(
                icon: Icon(Icons.location_on_outlined),
                onPressed: () {},
              ),
              Text('Bhubaneswar')
            ],
          ),
          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: <Widget>[
            Builder(
              builder: (context) {
                return IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              },
            )
          ],
        ),
        drawer: MyDrawer(),
        endDrawer: MyDrawer2(),
        body: getBody(),

        // ),

        //////////////////////// BOTTOM BAR //////////////////////////////////
      ),
    );
  }

  Widget getBody() {
    vegetables() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ArmFruit()));
    }

    fruits() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ArmFruit()));
    }

    grocery() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ArmFruit()));
    }

    medicines() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ArmFruit()));
    }

    final List<Function> ontaps = [
      vegetables,
      fruits,
      grocery,
      medicines,
    ];
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 40,
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      border: Border.all()),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                        value: _value,
                        items: [
                          DropdownMenuItem(
                            child: Text(" Category"),
                            value: 1,
                          ),
                          DropdownMenuItem(
                            child: Text("Second Item"),
                            value: 2,
                          ),
                          DropdownMenuItem(child: Text("Third Item"), value: 3),
                          DropdownMenuItem(child: Text("Fourth Item"), value: 4)
                        ],
                        onChanged: (value) {
                          setState(() {
                            _value = value;
                          });
                        }),
                  ),
                ),
                Container(
                  height: 40,
                  width: size.width * 0.5,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: buildInputDecoration(Icons.search, "Search"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            //////////////////////////// CAROUSEL SECTION //////////////////////////////////

            Center(
              child: SizedBox(
                height: 150.0,
                // width: 600.0,
                child: Carousel(
                  images: [
                    ExactAssetImage("assets/images/Rectangle 50.png"),
                    ExactAssetImage("assets/images/Rectangle 51.png"),
                    ExactAssetImage("assets/images/Rectangle 52.png"),
                  ],
                  dotSize: 4.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.black,
                  indicatorBgPadding: 5.0,
                  autoplay: true,
                  dotBgColor: Colors.blueGrey.withOpacity(0.5),
                  borderRadius: false,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),

            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      items.length,
                      (index) => Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            border: Border.all()),
                        child: InkWell(
                          onTap: () {
                            ontaps[index]();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(items[index]['img']),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(height: 10),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: Text(
                                    items[index]['name'],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ))),
            SizedBox(
              height: 10.0,
            ),

            Container(
                height: 80,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            color: Colors.green,
                            height: 40,
                            width: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Center(
                                  child: Text(
                                'Get 30% off on delivery of Vegitables',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ))),
                    Expanded(
                        child: Container(
                            color: Colors.red,
                            height: 40,
                            width: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Center(
                                  child: Text(
                                'Free Delivery for every purchase of Medicines',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ))),
                  ],
                )),
            SizedBox(
              height: 10.0,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/add1.png'),
                          height: 80.0,
                          width: 80.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Image(
                      image: AssetImage('assets/add2.png'),
                      height: 80.0,
                      width: 80.0,
                    ),
                  ),
                  Container(
                    child: Image(
                      image: AssetImage('assets/add3.png'),
                      height: 80.0,
                      width: 80.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: Divider(
                thickness: 2,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 5),
            ////////////////////////////// GRID CARDS ///////////////////////////////////////////

            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ProductBuy1()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all()),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 2.0, right: 2.0),
                              child: Column(
                                children: <Widget>[
                                  Row(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image:
                                              AssetImage('assets/banana.png'),
                                        )),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Ripe Bananas',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.0),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '\u{20B9}${35}',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            '40',
                                            style: TextStyle(
                                                color: Colors.black54,
                                                decoration:
                                                    TextDecoration.lineThrough),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductBuy1()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all()),
                            child: Column(
                              children: <Widget>[
                                // ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 2.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/banana.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(height: 6),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Ripe Bananas',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                '\u{20B9}${35}',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                '40',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    decoration: TextDecoration
                                                        .lineThrough),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductBuy1()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all()),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 2.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/banana.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(height: 6),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Ripe Bananas',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                '\u{20B9}${35}',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                '40',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    decoration: TextDecoration
                                                        .lineThrough),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductBuy1()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all()),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 2.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/banana.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(height: 6),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Ripe Bananas',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                '\u{20B9}${35}',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                '40',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    decoration: TextDecoration
                                                        .lineThrough),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8.0),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductBuy1()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all()),
                            child: Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 2.0, right: 2.0),
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/banana.png'),
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(height: 6),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Ripe Bananas',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Text(
                                                '\u{20B9}${35}',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                '40',
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    decoration: TextDecoration
                                                        .lineThrough),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 10),
            Container(
                height: 80,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                        child: Container(
                            color: Colors.green,
                            height: 40,
                            width: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Center(
                                  child: Text(
                                'Get Fresh and Best Quality Fruits at the best price',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ))),
                    Expanded(
                        child: Container(
                            color: Colors.red,
                            height: 40,
                            width: 40,
                            child: Padding(
                              padding: const EdgeInsets.all(13.0),
                              child: Center(
                                  child: Text(
                                'Free Delivery for every purchase of Medicines',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                            ))),
                  ],
                )),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, right: 40.0),
              child: Divider(
                thickness: 3,
                color: Colors.black,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Reapet your orders",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 14),
                textAlign: TextAlign.left,
              ),
            ),

            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      items1.length,
                      (index) => Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all()),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => ProductBuy(
                                          id: items1[index]['id'],
                                          name: items1[index]['name'],
                                          content: items1[index]['content'],
                                          img: items1[index]['img'],
                                          price: items1[index]['price'],
                                          price1: items1[index]['price1'],
                                        )));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(items1[index]['img']),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  items1[index]['name'],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 9),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      '\u{20B9}${items1[index]['price']}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                    ),
                                    // SizedBox(width: 10.0),
                                    Text(
                                      items1[index]['price1'],
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 10,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ))),

            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
