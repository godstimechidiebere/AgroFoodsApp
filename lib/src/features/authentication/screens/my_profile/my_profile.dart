import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/image_strings.dart';
import '../drawer_side.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  Widget listTile({required IconData icon, required String title}){
    return Column(
      children: [
        Divider(height: 1,
        ),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "My Profile",
          style: TextStyle(
            fontSize: 18,
            color: textColor,
          ),
        ),

      ),
      drawer: DrawerSide(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: primaryColor,
              ),
            Container(
             height: 548,
             width: double.infinity,
             padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
             decoration: BoxDecoration(
               color: scaffoldbackgroundColor,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(30),
                 topRight: Radius.circular(30),
               ),
             ),
             child: ListView(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Container(
                       width: 250,
                       height: 80,
                       padding: EdgeInsets.only(left: 20),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             "Nwabufo God's-Time",
                             style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.bold,
                               color: textColor,
                             ),
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           Text("nwabufo@ictuniversity.edu.cm")
                         ],
                       ),
                       CircleAvatar(
                         radius: 15,
                         backgroundColor: primaryColor,
                         child: CircleAvatar(
                           radius: 12,
                           child: Icon(
                             Icons.edit,
                             color: Colors.green,
                           ),
                           backgroundColor: scaffoldbackgroundColor,
                         ),
                       )
                     ],
                   ),),
                   ],
                 ),
                 listTile(
                   icon: Icons.shopping_basket,
                   title: "My Orders",
                 ),
                 listTile(
                   icon: Icons.location_on_outlined,
                   title: "My Delivery Address",
                 ),
                 listTile(
                   icon: Icons.person_outline_rounded,
                   title: "Refer A Friend",
                 ),
                 listTile(
                   icon: Icons.file_copy_outlined,
                   title: "Terms & Conditions",
                 ),
                 listTile(
                   icon: Icons.policy_outlined,
                   title: "Privacy Policy",
                 ),
                 listTile(
                   icon: Icons.add_chart,
                   title: "About",
                 ),
                 listTile(
                   icon: Icons.exit_to_app,
                   title: "Log Out",
                 ),
               ],
             ),

           ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 30),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: primaryColor,
              child: CircleAvatar(
                backgroundImage: AssetImage(tprofileimg),
                radius: 45,
                backgroundColor: scaffoldbackgroundColor,
              ),
            ),
          )

        ],
      ),
    );
  }
}
