import 'package:e_commerce_2022/view/screen/auth/login.dart';
import 'package:flutter/cupertino.dart';

import 'core/constant/routes.dart';

Map<String, Widget Function(BuildContext)> routes = {
  AppRoute.login: (context) => const Login()
};