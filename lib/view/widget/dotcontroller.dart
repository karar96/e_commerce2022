import 'package:e_commerce_2022/controller/onboarding_controller.dart';
import 'package:e_commerce_2022/core/constant/color.dart';
import 'package:e_commerce_2022/core/constant/dimensions.dart';
import 'package:e_commerce_2022/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(builder: (controller)=>Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
            onBoardingList.length,
                (index) => AnimatedContainer(
              margin:  EdgeInsets.only(right: Dimensions.width10/2),
              duration: const Duration(milliseconds: 900),
              width: controller.currentPage==index?Dimensions.height20:Dimensions.height10/2,
              height: Dimensions.height30/5,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius30/3)),
            ))
      ],
    ));

  }
}