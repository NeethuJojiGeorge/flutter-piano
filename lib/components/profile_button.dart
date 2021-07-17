import 'package:flutter/material.dart';
import 'package:flutter_piano/screens/profile/profile_screen.dart';


import '../constants.dart';
import '../size_config.dart';

class ProfileButton extends StatelessWidget {
  const ProfileButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context,ProfileScreen.routeName),
          child: Text(
            "Pro",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
