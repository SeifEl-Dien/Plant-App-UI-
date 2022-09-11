import 'package:flutter/material.dart';

import '../../../constants.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Buy Now',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        SizedBox(
            width: size.width / 2,
            height: 84,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Description',
                style: TextStyle(color: kPrimaryColor, fontSize: 16),
              ),
            ))
      ],
    );
  }
}
