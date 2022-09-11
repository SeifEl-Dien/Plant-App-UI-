import 'package:flutter/material.dart';
import 'package:plant_app_ui/constants.dart';

import 'componants/buttons.dart';
import 'componants/imageandicon.dart';
import 'componants/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcon(),
          TitleAndPrice(country: 'Russia', price: 440, title: 'Angelica'),
          SizedBox(height: kDefaultPadding),
          Buttons(),
        ],
      ),
    );
  }
}
