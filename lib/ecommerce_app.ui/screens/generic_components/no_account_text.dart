import 'package:flutter/material.dart';
import '../../constants/size_config.dart';
import '../sign_up/sign_up_screen.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Üye değil misiniz?",
            style: TextStyle(fontSize: getProportionateScreenWidth(18))),
        SizedBox(width: getProportionateScreenWidth(10)),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text("Üye Ol",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: getProportionateScreenWidth(16),
                  decoration: TextDecoration.underline)),
        )
      ],
    );
  }
}
