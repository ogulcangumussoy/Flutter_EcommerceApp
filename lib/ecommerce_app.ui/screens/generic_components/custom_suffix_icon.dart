import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/size_config.dart';

class CustomSuffixIcon extends StatelessWidget {

  const CustomSuffixIcon({
    Key key,
    @required this.inputWidth, this.svgIcon, 
  }) : super(key : key);
  final double inputWidth;
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(inputWidth),
        getProportionateScreenWidth(inputWidth),
        getProportionateScreenWidth(inputWidth)
        ),
      child: SvgPicture.asset(svgIcon),
    );
  }
}