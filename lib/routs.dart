import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

//We use name route
//All our routes will be available here

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
};