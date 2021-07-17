import 'package:flutter/material.dart';
import 'package:flutter_piano/components/default_button.dart';
import 'package:flutter_piano/components/form_error.dart';
import 'package:flutter_piano/components/no_account_text.dart';
import 'package:flutter_piano/constants.dart';
import '../../../size_config.dart';
import 'sign_form.dart';

/*
import 'sign_form.dart';
*/

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,

        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(25),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sign in with your email and password  \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SignForm(),
              SizedBox(height: getProportionateScreenHeight(20)),
              NoAccountText(),
            ],
          ),
          ),),),);
  }
}
