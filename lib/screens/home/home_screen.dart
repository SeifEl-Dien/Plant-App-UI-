import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app_ui/constants.dart';

import 'componants/b_nav_bar.dart';
import 'componants/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset('assets/icons/menu.svg')),
      ),
      body: Body(),
      bottomNavigationBar: BNavBar(),
    );
  }
}
