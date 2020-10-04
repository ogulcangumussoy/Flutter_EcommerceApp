import 'package:ecommerce_app/constValues/constanst.dart';
import 'package:ecommerce_app/routs.dart';
import 'package:ecommerce_app/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: "Muli",
      textTheme: TextTheme(
        bodyText1: TextStyle(color: kTextColor),
        bodyText2: TextStyle(color: kTextColor)
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
       ),
      //home: SplashScreen(),
      //We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
