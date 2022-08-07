import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturePlantCard extends StatelessWidget {
  final String image;
  final Function() press;
  const FeaturePlantCard({Key? key, required this.image, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: (kDefaultPadding / 2),
          bottom: (kDefaultPadding / 2),
        ),
        width: (size.width) * 0.8,
        height: 185.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              image,
            ),
          ),
        ),
      ),
    );
  }
}

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: 'assets/images/bottom_img_1.png',
            press: () {},
          ),
          FeaturePlantCard(
            image: 'assets/images/bottom_img_2.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}
