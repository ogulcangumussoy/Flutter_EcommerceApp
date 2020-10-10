import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign_up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Üye Ol")),
      body: Center(child: Text("Sayfa İçeriği"),)
    );
  }
}
