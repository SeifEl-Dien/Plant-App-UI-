import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';
import 'package:plant_app_ui/screens/details/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
