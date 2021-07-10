import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'fruitsConstant.dart';
import 'fruitsdetails.dart';
import 'model.dart';

class ArmFruit extends StatefulWidget {
  ArmFruit({Key key}) : super(key: key);

  @override
  _ArmFruitState createState() => _ArmFruitState();
}

class _ArmFruitState extends State<ArmFruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Fruits',
          style: GoogleFonts.varelaRound(
            // color: ColorConstants.primaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart,
              size: 20,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildSortFilter(),
            _buildProducts(),
          ],
        ),
      ),
    );
  }

  _buildSortFilter() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.sort,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Sort',
                    style: GoogleFonts.varelaRound(
                      // color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.filter_list,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Filter',
                    style: GoogleFonts.varelaRound(
                      // color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildProducts() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: _buildLeftSide(),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: _buildRightSide(),
          ),
        ],
      ),
    );
  }

  _buildLeftSide() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(Constants.chairs.length, (index) {
        if (index.isEven) {
          return _ProductWidget(
            productModel: Constants.chairs[index],
          );
        }

        return Container(
          height: 0,
          width: 0,
        );
      }),
    );
  }

  _buildRightSide() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(Constants.chairs.length, (index) {
        if (index.isOdd) {
          return _ProductWidget(
            productModel: Constants.chairs[index],
          );
        }

        return Container(
          height: 0,
          width: 0,
        );
      })
        ..insert(
            0,
            SizedBox(
              height: 50,
            )),
    );
  }
}

class _ProductWidget extends StatelessWidget {
  final ProductModel productModel;
  const _ProductWidget({
    this.productModel,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProductDetails(
            productModel: productModel,
          ),
        ));
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 20,
        ),
        child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Card(
              // shadowColor: Colors.grey[400],
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Image.asset(
                        "assets/images/star.png",
                        height: 30,
                        width: 30,
                      ),
                    ),
                    Hero(
                      tag: productModel.id.toString(),
                      child: Image.asset(
                        productModel.imagePath,
                        height: 150,
                      ),
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
          ],
        ),
      ),
    );
  }
}
