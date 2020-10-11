import 'package:ecommerce_app/ecommerce_app.ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import '../../../constants/const_values.dart';
import '../../../constants/size_config.dart';
import '../../generic_components/default_button.dart';
import '../../splash/splash_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
            height: SizeConfig.screenHeight * 0.5,
            child: Image.asset("assets/images/success.png")),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Text("Giriş Başarılı",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
                fontSize: getProportionateScreenWidth(30))),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
              text: "Ana Ekrana Dön",
              press: () {
                Navigator.popAndPushNamed(context, HomeScreen.routeName);
              }),
        ),
        Spacer()
      ],
    );
  }
}
