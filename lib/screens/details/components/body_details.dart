import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/image_and_icons.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

import 'bye_and_description.dart';

class BodyDetails extends StatelessWidget {
  const BodyDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children:  [
          ImageAndIcon(),
          TitleAndPrice(
            title: 'Hussein',
            country: 'Egypt',
            price: 440,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          ByeAndDescription(
            bye: 'Bye Now',
            description: 'Description',
          ),
        ],
      ),
    );
  }
}
