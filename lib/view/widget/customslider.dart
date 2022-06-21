import 'package:e_commerce_2022/controller/onboarding_controller.dart';
import 'package:e_commerce_2022/core/constant/color.dart';
import 'package:e_commerce_2022/core/constant/dimensions.dart';
import 'package:e_commerce_2022/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomSliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const CustomSliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (val){
        controller.onPageChanged(val);
      },
        itemCount: onBoardingList.length,
        itemBuilder: (context, i) => Column(
          children: [
            Text(onBoardingList[i].title!,
            style:  Theme.of(context).textTheme.headline1),

             SizedBox(height: Dimensions.height40*2),
            Image.asset(
              onBoardingList[i].image!,
              width: Dimensions.width100*2,
              height: Dimensions.height100*2.3,
              fit: BoxFit.fill,
            ),
             SizedBox(height: Dimensions.height40*2),
            Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  onBoardingList[i].body!,
                  textAlign: TextAlign.center,
                  style:  Theme.of(context).textTheme.bodyText1,
                )),
          ],
        ));
  }
}