import 'package:ecommerce_app/ecommerce_app.ui/constants/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key, this.errors,
  }) : super(key: key);
  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
         errors.length, 
         (index) => formErrorText(error:errors[index])
      )
    );
  }

  Row formErrorText({String error}) {
    return Row(
        children: <Widget>[
          SvgPicture.asset("assets/icons/Error.svg",
          height: getProportionateScreenHeight(20),
          width: getProportionateScreenHeight(20)),
          SizedBox(width: getProportionateScreenWidth(10)),
          Text(error)
        ],
      );
  }
}
