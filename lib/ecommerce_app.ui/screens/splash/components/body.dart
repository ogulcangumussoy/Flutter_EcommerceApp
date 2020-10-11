import 'package:ecommerce_app/ecommerce_app.ui/screens/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';
import '../../../constants/const_values.dart';
import '../../../constants/size_config.dart';
import 'content.dart';
import '../../generic_components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "$kCompanyName Mobil Satış Uygulamasına hoşgeldiniz.",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "Birbirinden kaliteli ürünler elinizin altında",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Artık hazırsınız. Hadi başlayalım...",
      "image": "assets/images/splash_3.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    text: splashData[index]["text"],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                              splashData.length, (index) => buildDot(index)
                              )
                        ),
                      Spacer(flex: 3,),
                      DefaultButton(
                        text: "Giriş",
                        press: (){
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        }
                      ),
                      Spacer()
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
        duration: kAnimationDuration,
        margin: EdgeInsets.only(right: 5),
        height: 6,
        width: currentPage == index ? 20 : 6,
        decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3),
        ));
  }
}
