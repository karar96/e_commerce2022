import 'package:e_commerce_2022/core/constant/dimensions.dart';
import 'package:e_commerce_2022/routes.dart';
import 'package:e_commerce_2022/view/screen/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/constant/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "PlayfairDisplay",
        textTheme:  TextTheme(
            headline1: TextStyle(fontWeight: FontWeight.bold, fontSize: 20 , color: AppColor.black ),
            bodyText1: TextStyle(
                height: 2,
                color: AppColor.grey,
                fontWeight: FontWeight.bold,
                fontSize: 16)),

        primarySwatch: Colors.blue,
      ),
      home: const OnBoarding(),
      routes: routes,
    );
  }
}

