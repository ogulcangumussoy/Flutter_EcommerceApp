import 'package:flutter/material.dart';
import '../screens/sign_up/sign_up_screen.dart';
import '../constValues/size_config.dart';

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
            style: TextStyle(fontSize: getProportionateScreenWidth(16))),
        SizedBox(width: getProportionateScreenWidth(10)),
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
          child: Text("Üye Ol",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: getProportionateScreenWidth(16),
                  decoration: TextDecoration.underline)),
        ),
      ],
    );
  }
}
