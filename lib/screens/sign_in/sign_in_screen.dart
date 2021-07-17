import 'package:flutter/material.dart'; //test probably dont need
import 'package:flutter_piano/screens/sign_in/components/body.dart';


class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In", textAlign: TextAlign.center,),
      ),
      body: Body(),
    );

  }
}
