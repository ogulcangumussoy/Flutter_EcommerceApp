import 'package:flutter/material.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/login_success/login_succes_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName:           (context) => SplashScreen(),
  SignInScreen.routeName:           (context) => SignInScreen(),
  SignUpScreen.routeName:           (context) => SignUpScreen(),
  LoginSuccessScreen.routeName:     (context) => LoginSuccessScreen(),
  ForgotPasswordScreen.routeName:   (context) => ForgotPasswordScreen(),
  HomeScreen.routeName:             (context) => HomeScreen()
};