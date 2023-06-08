import 'package:agrofoods/src/constants/image_strings.dart';
import 'package:agrofoods/src/features/authentication/models/single_products_model.dart';
import 'package:agrofoods/src/features/authentication/screens/drawer_side.dart';
import 'package:agrofoods/src/features/authentication/screens/product_overview/product_overview.dart';
import 'package:agrofoods/src/features/authentication/screens/search/search.dart';
import 'package:agrofoods/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:agrofoods/components/horizontal_listview.dart';
import 'package:provider/provider.dart';

import 'components/product_provider.dart';
//import 'package:agrofoods/components/products_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ProductProvider productProvider;

  Widget _buildHerbsProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Herbs Seasoning'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              single_products(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productName: "Fresh Basil",
                            productImage: (tfirstproduct),
                          )));
                },
                productImage: (tfirstproduct),
                productName: "Fresh Basil",
              ),
              single_products(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productImage: (tsecondproduct),
                            productName: "Fresh Mint",
                          )));
                },
                productImage: (tsecondproduct),
                productName: "Fresh Mint",
              ),
              single_products(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productImage: (tthirdproduct),
                            productName: "Rose Merry",
                          )));
                },
                productImage: (tthirdproduct),
                productName: "Rose Merry",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFreshProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Fresh Fruits'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              single_products(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productImage: (t2firstproduct),
                            productName: 'WaterMelon',
                          )));
                },
                productImage: (t2firstproduct),
                productName: 'WaterMelon',
              ),
              single_products(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productImage: (t2secondproduct),
                            productName: "Grapes",
                          )));
                },
                productImage: (t2secondproduct),
                productName: "Grapes",
              ),
              single_products(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productImage: (t2thirdproduct),
                            productName: "Mango",
                          )));
                },
                productImage: (t2thirdproduct),
                productName: "Mango",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRootProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Root Food Crops'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              single_products(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productImage: (t3firstproduct),
                            productName: 'Yam',
                          )));
                },
                productImage: (t3firstproduct),
                productName: 'Yam',
              ),
              single_products(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productImage: (t3secondproduct),
                            productName: 'Carrot',
                          )));
                },
                productImage: (t3secondproduct),
                productName: 'Carrot',
              ),
              single_products(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ProductOverview(
                            productImage: (t3thirdproduct),
                            productName: 'Onion',
                          )));
                },
                productImage: (t3thirdproduct),
                productName: 'Onion',
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context,listen:false);
    productProvider.fetchHerbsproductData();
    super.initState();
  }

  Widget build(BuildContext context) {
    productProvider = Provider.of(context);
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/a1.jpg'),
          AssetImage('assets/b1.jpg'),
          AssetImage('assets/c1.jpg'),
          AssetImage('assets/d1.jpg'),
          AssetImage('assets/e1.jpg'),
          AssetImage('assets/f1.jpg'),
          AssetImage('assets/g1.jpg'),
          AssetImage('assets/h1.jpg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.green,
        indicatorBgPadding: 6.0,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Text('AgroFood'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Search(),
                  ),
                );
              },
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      drawer: DrawerSide(),
      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),
          ),

          //Horizontal List View begins here
          HorizontalList(),

          //padding widget
          new Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Recent Products'),
                Text(
                  'view all',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),

          _buildHerbsProduct(context),
          _buildFreshProduct(context),
          _buildRootProduct(context),
        ],
      ),
    );
  }
}
