import 'package:flutter/material.dart';
import '../../../screens/forgot_password/components/form.dart';
import '../../../constValues/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(children: <Widget>[
            SizedBox(height: SizeConfig.screenHeight * 0.04),
            Text("Parolamı Unuttum",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: getProportionateScreenHeight(20)),
            Text(
              "Parolanızın sıfırlanabilmesi için sisteme kayıtlı olan mail adresinizi giriniz.",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight * 0.1),
            ForgotPasswordForm(),
          ]),
        ),
      ),
    );
  }
}