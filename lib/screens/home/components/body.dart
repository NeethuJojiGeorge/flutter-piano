
import 'package:flutter/material.dart';
import 'package:flutter_piano/screens/home/components/categories.dart';
import 'package:flutter_piano/screens/home/components/home_header.dart';
import 'package:flutter_piano/screens/home/components/popular_product.dart';
import 'package:flutter_piano/screens/home/components/special_offers.dart';
import 'package:flutter_piano/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}

