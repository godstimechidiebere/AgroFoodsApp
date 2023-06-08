import "package:flutter/material.dart";

import 'package:agrofoods/src/constants/image_strings.dart';
import 'package:agrofoods/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../constants/colors.dart';
import '../../controllers/on_boarding_controller.dart';
import '../../models/model_on_boarding.dart';
import '../splash_screen/splash_screen.dart';
import '../welcome/welcoming_screen.dart';
import 'on_boarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    final obcontroller = OnBoardController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            liquidController: obcontroller.controller,
            onPageChangeCallback: obcontroller.onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () => obcontroller.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,

              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                  color: tDarkColor, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
              ),
            ),

            Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () => {
                  WelcomeScreen(),
                },
                child: const Text("Skip", style: TextStyle(color: Colors.grey)),
              ),
            ),
            Obx(
              () => Positioned(
                bottom: 10,
                child: AnimatedSmoothIndicator(
                  count: 3,
                  activeIndex: obcontroller.currentPage.value,
                  effect: const WormEffect(
                    activeDotColor: Color(0xff272727),
                    dotHeight: 9.0,
                  ),
                ),
              ),
            ),

        ],
      ),
    );
  }

}


