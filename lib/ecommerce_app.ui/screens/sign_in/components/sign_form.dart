import 'package:ecommerce_app/ecommerce_app.ui/screens/forgot_password/forgot_password_screen.dart';
import 'package:flutter/material.dart';
import '../../../constants/const_values.dart';
import '../../../constants/size_config.dart';
import '../../generic_components/custom_suffix_icon.dart';
import '../../generic_components/default_button.dart';
import '../../login_success/login_succes_screen.dart';
import '../../generic_components/form_error.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  bool remember = false;
  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(10)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(10)),
          Row(
            children: [
              buildRememberMeCheckBox(),
              Spacer(),
              buildForgotPasswordText(),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
              text: "Giriş Yap",
              press: () {
                if (_formKey.currentState.validate() && errors.length == 0) {
                  _formKey.currentState.save();
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              })
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

  TextFormField buildPasswordFormField() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue) => password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(kPassNullError)) {
            errorListOperations(error: kPassNullError, operation: "remove");
            return "";
          } else if (value.length >= 8 && errors.contains(kShortPassError)) {
            errorListOperations(error: kShortPassError, operation: "remove");
            return "";
          }
          return null;
        },
        validator: (value) {
          if (value.isEmpty && !errors.contains(kPassNullError)) {
            errorListOperations(error: kPassNullError, operation: "add");
            return "";
          } else if (value.length < 8 && !errors.contains(kShortPassError)) {
            errorListOperations(error: kShortPassError, operation: "add");
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            labelText: "Parola",
            hintText: "Parolanızı giriniz",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
                svgIcon: "assets/icons/Lock.svg", inputWidth: 20)));
  }

  Row buildRememberMeCheckBox() {
    return Row(children: <Widget>[
      Checkbox(
        value: remember,
        activeColor: kPrimaryColor,
        onChanged: (value) {
          setState(() {
            remember = value;
          });
        },
      ),
      Text("Beni Hatırla"),
    ]);
  }

  GestureDetector buildForgotPasswordText() {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, ForgotPasswordScreen.routeName),
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Text(
          "Parolamı Unuttum",
          style: TextStyle(
              color: Colors.blue, decoration: TextDecoration.underline),
        ),
      ),
    );
  }
}
