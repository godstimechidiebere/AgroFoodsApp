import 'package:agrofoods/home.dart';
import 'package:agrofoods/src/features/authentication/models/cart_model.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import 'my_profile/my_profile.dart';

class DrawerSide extends StatelessWidget {
  Widget listTile(
      {required IconData icon,
      required String title,
      required Function () onTap }) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
      onTap: onTap,
    );
  }

  const DrawerSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: new BoxDecoration(
          color: primaryColor,
        ),
        child: new ListView(
          children: <Widget>[
            //           header
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, color: Colors.white)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Welcome Guest"),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.pink),
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text("Login"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(
              icon: Icons.home_outlined,
              title: "Home",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            listTile(
              icon: Icons.shopping_basket,
              title: "Review Cart",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ReviewCart(),
                  ),
                );
              },
            ),
            listTile(
              icon: Icons.person,
              title: "My Profile",
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => MyProfile(),
                  ),
                );
              },
            ),
            listTile(
              icon: Icons.notifications_active_rounded,
              title: "Notification",
              onTap: () {},
            ),
            listTile(
              icon: Icons.star_outline,
              title: "Rating & Review",
              onTap: () {},
            ),
            listTile(
              icon: Icons.favorite_outline,
              title: "Wishlist",
              onTap: () {},
            ),
            listTile(
              icon: Icons.copy_outlined,
              title: "Raise a Complaint",
              onTap: () {},
            ),
            listTile(
              icon: Icons.home_outlined,
              title: "FAQs",
              onTap: () {},
            ),

            Divider(),

            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Support"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Call us:"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("+237-683-681-581"),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text("Mail us:"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("nwabufo@ictuniversity.edu.cm"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
