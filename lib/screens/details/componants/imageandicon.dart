import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'Icon_card.dart';

class ImageAndIcon extends StatelessWidget {
  const ImageAndIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                  ),
                  IconButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: SvgPicture.asset('assets/icons/back_arrow.svg')),
                  Spacer(),
                  IconCard(icon: 'assets/icons/sun.svg'),
                  IconCard(icon: 'assets/icons/icon_2.svg'),
                  IconCard(icon: 'assets/icons/icon_3.svg'),
                  IconCard(icon: 'assets/icons/icon_4.svg')
                ],
              ),
            )),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/img.png',
                      )),
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
