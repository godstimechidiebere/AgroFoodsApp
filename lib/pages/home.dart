import 'package:agrofoods/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//my own imports
import 'package:agrofoods/components/horizontal_listview.dart';
//import 'package:agrofoods/components/products_model.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
          IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart, color: Colors.white,))
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //           header
            new UserAccountsDrawerHeader(
                accountName: Text('Your Name'),
                accountEmail: Text('Your email'),
                currentAccountPicture: GestureDetector(
                    child: new CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, color: Colors.white)
                    )
                ),
                decoration: new BoxDecoration(
                    color: Colors.pink
                )
            ),

            //body
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person),
              ),
            ),


            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite, color: Colors.red),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.green,),
              ),
            ),



          ],
        ),
      ),

      body: new ListView(
        children: <Widget>[
          //image carousel begins here
          image_carousel,
          //padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: new Text('Categories'),),

          //Horizontal List View begins here
          HorizontalList(),

          //padding widget
          new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent products'),),

          /* //grid view
          Container(
            height: 320.0,
            child: Products(),
          ),*/
        ],
      ),
    );
  }
}