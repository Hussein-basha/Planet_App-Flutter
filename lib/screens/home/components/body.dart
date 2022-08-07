import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/Header_With_Search_Box.dart';
import 'package:plant_app/screens/home/components/Title_With_More_Btn.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';

import 'recommend_plants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it will prove us total and height and width of our screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(
            size: size,
          ),
          TitleWithMoreBtn(
            title: 'Recommended',
            press: () {},
          ),
           RecommendPlants(),
          TitleWithMoreBtn(
            title: 'Featured Plants',
            press: () {},
          ),
           FeaturedPlants(),
           SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
