import 'package:e_commerce_2022/controller/onboarding_controller.dart';
import 'package:e_commerce_2022/view/widget/custombutton.dart';
import 'package:e_commerce_2022/view/widget/customslider.dart';
import 'package:e_commerce_2022/view/widget/dotcontroller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(children: [
            const Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(flex: 2),
                    CustomButtonOnBoarding()
                  ],
                ))
          ]),
        ));
  }
}
