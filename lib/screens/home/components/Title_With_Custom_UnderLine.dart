import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleWithCustomUnderLine extends StatelessWidget {
  final String text;
  const TitleWithCustomUnderLine({Key? key, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it will prove us total and height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.only(
              left: kDefaultPadding / 4,
            ),
            child: Text(
              text,
              style:  TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin:  EdgeInsets.only(
                right: (kDefaultPadding) / 4,
              ),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
