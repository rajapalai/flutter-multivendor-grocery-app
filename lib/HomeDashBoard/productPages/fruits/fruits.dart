import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'fruitsConstant.dart';
import 'fruitsarms.dart';
import 'model.dart';

class FruitsHome extends StatefulWidget {
  FruitsHome({Key key}) : super(key: key);

  @override
  _FruitsHomeState createState() => _FruitsHomeState();
}

class _FruitsHomeState extends State<FruitsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Products',
          style: GoogleFonts.varelaRound(
            // color: ColorConstants.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Colors.grey[200],
                    Colors.white,
                  ],
                  stops: [
                    0.1,
                    1
                  ]),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _buildProducts(),
                  _buildBestOffes(),
                ],
              ),
            ),
          ),
          _buildMoreButton()
        ],
      ),
    );
  }

  _buildProducts() {
    return DefaultTabController(
      length: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TabBar(
            labelColor: Colors.green,
            unselectedLabelColor: Colors.grey,
            labelStyle: GoogleFonts.varelaRound(fontWeight: FontWeight.w600),
            isScrollable: true,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  color: Colors.red,
                  width: 2,
                ),
                insets: EdgeInsets.symmetric(horizontal: 45)),
            tabs: [
              Tab(
                text: 'Fruits',
              ),
              Tab(
                text: 'Vegitables',
              ),
              Tab(
                text: 'Grocery',
              ),
              Tab(
                text: 'Medicine',
              ),
            ],
          ),
          Container(
            height: 250,
            child: TabBarView(
              children: [
                _buildFruitsProducts(),
                Container(),
                Container(),
                Container(),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildBestOffes() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              Text(
                'Best',
                style: GoogleFonts.varelaRound(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              Text(
                'Offers',
                style: GoogleFonts.varelaRound(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 100,
            child: Divider(
              thickness: 5,
              color: Colors.redAccent,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: List.generate(Constants.bestOffers.length, (index) {
              return _BestOfferWidget(
                productModel: Constants.bestOffers[index],
              );
            }),
          )
        ],
      ),
    );
  }

  _buildFruitsProducts() {
    return InkWell(
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return _FruitWidget(
            productModel: Constants.chairs[index],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 10,
          );
        },
        itemCount: Constants.chairs.length,
      ),
    );
  }

  _buildMoreButton() {
    return Positioned(
      bottom: 0,
      right: 0,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ArmFruit(),
          ));
        },
        child: Container(
          width: 100,
          height: 70,
          decoration: BoxDecoration(
              color: Colors.green[200],
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'more',
                style: GoogleFonts.varelaRound(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _BestOfferWidget extends StatelessWidget {
  final ProductModel productModel;
  const _BestOfferWidget({Key key, this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Stack(
        alignment: Alignment.center,
        overflow: Overflow.visible,
        children: <Widget>[
          Card(
            child: Container(
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(5)),
            ),
          ),
          Positioned(
            // right: -10,
            child: Image.asset(productModel.imagePath),
            height: 40,
            width: 40,
          ),
        ],
      ),
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              productModel.name,
              style: GoogleFonts.varelaRound(
                // color: ColorConstants.primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              productModel.productType,
              style: GoogleFonts.varelaRound(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            Divider()
          ],
        ),
      ),
      trailing: Text(
        '\$${productModel.price}',
        style: GoogleFonts.varelaRound(
          color: Colors.redAccent,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _FruitWidget extends StatelessWidget {
  final ProductModel productModel;

  const _FruitWidget({Key key, this.productModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: constraints.maxHeight,
              width: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.1, 1]),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Image.asset(
                          "assets/images/star.png",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      Image.asset(
                        productModel.imagePath,
                        // heigRht: 120,
                      ),
                      Text(
                        productModel.name,
                        style: GoogleFonts.varelaRound(
                          // color: ColorConstants.primaryColor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '\u{20B9}${productModel.price}',
                            style: GoogleFonts.varelaRound(
                              // color: ColorConstants.primaryColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '${productModel.price1}',
                            style: GoogleFonts.varelaRound(
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        Positioned(
          bottom: -10,
          right: 20,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              // color: ColorConstants.primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
