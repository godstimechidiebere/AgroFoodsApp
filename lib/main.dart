// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:agrofoods/components/product_provider.dart';
import 'package:agrofoods/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:agrofoods/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:agrofoods/src/utils/theme/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider<ProductProvider>(
      create: (context)=>ProductProvider(),
      child: GetMaterialApp(
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        home: SplashScreen(),
      ),
    );

  }
}





/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: AgroFood,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    )
  }

} */





