import 'package:e_commerce_2022/controller/onboarding_controller.dart';
import 'package:e_commerce_2022/core/constant/color.dart';
import 'package:e_commerce_2022/core/constant/dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.only(bottom: Dimensions.height30),
      height: Dimensions.height40,
      child: MaterialButton(
          padding:  EdgeInsets.symmetric(horizontal: Dimensions.width100, vertical: 0),
          textColor: Colors.white,
          onPressed: () {
            controller.next();
          },
          color: AppColor.primaryColor,
          child:  Text("Continue",style: TextStyle(fontSize: Dimensions.font16),)),
    );
  }
}