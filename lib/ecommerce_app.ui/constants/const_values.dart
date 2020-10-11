import 'package:flutter/material.dart';

const kCompanyName = "Teknoyel";
const kPrimaryColor = Colors.black; //Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

//Form Error

final RegExp emailValidatorRegExp = 
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

const String kEmailNullError = "Email alanı bış olamaz.";
const String kInvalidEmailError = "Lüfen geçerli bir mail adresi giriniz";
const String kPassNullError = "Parola alanı boş olamaz.";
const String kShortPassError = "Parola çok kısa.";
const String kMatchPassError = "Parolalar eşleşmemektedir.";