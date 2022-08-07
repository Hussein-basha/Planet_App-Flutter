import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/Title_With_Custom_UnderLine.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final Function() press;
  const TitleWithMoreBtn({Key? key, required this.title, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it will prove us total and height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Row(
        children: [
          TitleWithCustomUnderLine(
            text: title,
          ),
           Spacer(),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            color: kPrimaryColor,
            onPressed: press,
            child:  Text(
              'More',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
