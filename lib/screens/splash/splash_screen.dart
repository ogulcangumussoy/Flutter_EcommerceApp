import 'package:ecommerce_app/constValues/size_config.dart';
import 'package:ecommerce_app/screens/splash/components/body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body:Body()
    );
  }
}