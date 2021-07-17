import 'package:flutter/material.dart';
import 'package:flutter_piano/constants.dart';
import 'package:flutter_piano/screens/sign_in/sign_in_screen.dart';
import 'package:flutter_piano/size_config.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}
class _BodyState extends State<Body> {
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to The Piano Teacher, Let’s learn!",
      "image": "assets/images/splash_4.png"
    },
    {
      "text":
      "Practice daily at your convenience",
      "image": "assets/images/splash_3.png"
    },
    {
      "text": "Improve your piano skills",
      "image": "assets/images/splash_2.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
      child: Column(
      children: <Widget>[
        Spacer(),
        Expanded(
          flex: 3,
          child: PageView.builder(
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
            DefaultButton(
              text: "Continue",
              press: () {
                Navigator.pushNamed(context, SignInScreen.routeName);
              },
            ),

        Spacer(),
        ],
    ),),),
    ],),),);

  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
}) : super(key: key);
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
                    "The Piano Teacher",
                    style: TextStyle(
                      fontSize: getProportionateScreenHeight(36),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(text, textAlign: TextAlign.center,
                  ),
                  Spacer(flex:2),
                  Image.asset(image,
                    height: getProportionateScreenHeight(240),
                    width: getProportionateScreenWidth(250),
                  ),
                ],
              );
  }
}
class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
}) : super(key: key);
  final String text;
  final Function press;
@override
Widget build(BuildContext context) {
  return SizedBox(
    width: double.infinity,
    height: getProportionateScreenHeight(56),
    child: FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: kPrimaryColor,
      onPressed: press,
      child: Text(
      text,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(18),
          color: Colors.white,
        ),
      ),
    ),
  );
}
}