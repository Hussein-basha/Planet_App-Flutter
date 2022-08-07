import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/body_details.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BodyDetails(),
    );
  }
}
