import 'package:agrofoods/src/features/authentication/screens/welcome/welcoming_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:get/get_rx/src/rx_types/rx_types.dart';

import '../../../home.dart';
import '../../features/authentication/screens/on_boarding/on_boarding_screen.dart';

class FadeInAnimationController extends GetxController{
  static FadeInAnimationController get find => Get.find();


  RxBool animate = false.obs;

  Future startSplashAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(() => const WelcomeScreen());
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen))
  }

  Future startAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen))
  }

}