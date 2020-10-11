import 'package:ecommerce_app/ecommerce_app.ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import '../../../constants/const_values.dart';
import '../../../constants/size_config.dart';
import '../../generic_components/custom_suffix_icon.dart';
import '../../generic_components/default_button.dart';
import '../../generic_components/form_error.dart';
import '../../generic_components/no_account_text.dart';

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  List<String> errors = [];
  String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          DefaultButton(
            text: "Devam et",
            press: () {
              if (_formKey.currentState.validate() && errors.length == 0) {
                Navigator.popAndPushNamed(context, HomeScreen.routeName);
              }
            },
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.1),
          NoAccountText()
        ],
      ),
    );
  }

/*
  //////-------------------------------------/////////////
              Beginning of SubComponents
  //////-------------------------------------/////////////
 */

  void errorListOperations({String error, String operation}) {
    return setState(() {
      if (operation == "add")
        errors.add(error);
      else if (operation == "remove") errors.remove(error);
    });
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kEmailNullError)) {
            errorListOperations(error: kEmailNullError, operation: "remove");
            return "";
          } else if (emailValidatorRegExp.hasMatch(value) &&
              errors.contains(kInvalidEmailError)) {
            errorListOperations(error: kInvalidEmailError, operation: "remove");
            return "";
          }
          return null;
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kEmailNullError)) {
            errorListOperations(error: kEmailNullError, operation: "add");
            return "";
          } else if (!emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)) {
            errorListOperations(error: kInvalidEmailError, operation: "add");
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            labelText: "Email",
            hintText: "Email adresinizi giriniz",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/Mail.svg", inputWidth: 20)));
  }
}
