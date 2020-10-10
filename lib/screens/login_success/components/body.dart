import 'package:ecommerce_app/components/default_button.dart';
import 'package:flutter/material.dart';

import '../../../constValues/constanst.dart';
import '../../../constValues/size_config.dart';
import '../../../constValues/size_config.dart';
import '../../../constValues/size_config.dart';
import '../../../constValues/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.5,
          child: Image.asset("assets/images/success.png")),
          SizedBox(height:SizeConfig.screenHeight * 0.04),
          Text( "Giriş Başarılı",
                textAlign: TextAlign.center,
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  color:kPrimaryColor,
                  fontSize: getProportionateScreenWidth(30))
              ),
          Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
              text:"Ana Ekrana Dön",
              press:(){}),
          ),
          Spacer()
      ],
    );
  }
}