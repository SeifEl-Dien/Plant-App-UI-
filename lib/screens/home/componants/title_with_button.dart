import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithButton extends StatelessWidget {
  const TitleWithButton({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final Function()? press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TileWithUnderline(
            text: title,
          ),
          Spacer(),
          TextButton(
            onPressed: press,
            child: Text(
              'More',
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          )
        ],
      ),
    );
  }
}

class TileWithUnderline extends StatelessWidget {
  const TileWithUnderline({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
