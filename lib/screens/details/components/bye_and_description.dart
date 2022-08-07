import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class ByeAndDescription extends StatelessWidget {
  final String bye, description;
  const ByeAndDescription(
      {Key? key, required this.bye, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: 84.0,
          width: (size.width / 2),
          child: FlatButton(
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  20.0,
                ),
              ),
            ),
            color: kPrimaryColor,
            child: Text(
              bye,
              style:  TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: FlatButton(
            child: Text(
              description,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
