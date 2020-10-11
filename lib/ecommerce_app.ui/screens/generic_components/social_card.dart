import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/size_config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({Key key, @required this.icon, this.press})
      : super(key: key);
  final String icon;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(50),
        width: getProportionateScreenWidth(50),
        decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9), 
                      shape: BoxShape.circle
                    ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
