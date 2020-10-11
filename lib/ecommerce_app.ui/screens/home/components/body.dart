import 'package:flutter/material.dart';
import '../../../constants/const_values.dart';
import '../../../constants/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Center(
            child: Text(
                      "ANASAYFA",
                      style: 
                          TextStyle(
                            color: kPrimaryColor,
                            fontSize: getProportionateScreenWidth(35))
                        )
              ),
        Spacer()
      ],
    );
  }
}