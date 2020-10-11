import 'package:flutter/material.dart';
import '../../../constants/size_config.dart';
import 'sign_form.dart';
import '../../generic_components/no_account_text.dart';
import '../../generic_components/social_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text("Hoşgeldiniz",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(28),
                        fontWeight: FontWeight.bold)),
                Text(
                    "Email/Parola yönteminin yanı sıra sosyal medya hesaplarınızı kullanarak da giriş yapabilirsiniz.",
                    textAlign: TextAlign.center),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                ),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                        icon: "assets/icons/google-icon.svg", press: () {}),
                    SocialCard(icon: "assets/icons/facebook-2.svg", press: () {}),
                    SocialCard(icon: "assets/icons/twitter.svg", press: () {})
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
