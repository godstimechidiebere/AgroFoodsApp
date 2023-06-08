import 'package:agrofoods/src/constants/sizes.dart';
import 'package:agrofoods/src/constants/text_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../../home.dart';
import '../../../../common_widgets/form/form_header_widget.dart';
import '../../../../constants/image_strings.dart';
import 'login_footer_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      return user;
    } catch (e) {

    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            //width: double.infinity,
            //height: double.infinity,
            padding: const EdgeInsets.all(tDefaultSize),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(tLoginimg),
              ),
            ),
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              //children: const [
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Login in to Continue'),
                      Text(
                        'AgroFood Shop',
                        style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          shadows: [
                            BoxShadow(
                              blurRadius: 5,
                              color: Colors.green.shade900,
                              offset: Offset(3, 3),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SignInButton(
                            Buttons.Apple,
                            text: "Sign up with Apple",
                            onPressed: () {},
                          ),
                          SignInButton(
                            Buttons.Google,
                            text: "Sign up with Google",
                            onPressed: ()async {
                              await _googleSignUp().then((value) =>
                                  Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(),
                                    ),
                                  ),
                              );
                            },
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Text(
                            'By Signing in you are agreeing to our',
                            style: TextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                          Text(
                            'Terms and Privacy Policy',
                            style: TextStyle(
                              color: Colors.grey[800],
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              LoginForm(),
            ],

              /*FormHeaderWidget(
                  image: tWelcomeScreenImage,
                  title: tLoginTitle,
                  subTitle: tLoginSubTitle,
                ),*/

              //LoginFooterWidget(),

              /*-- /.end---*/
              //],
            ),
          ),
        ),
      ),
    );
  }
}
