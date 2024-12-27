import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/core/helper/constants.dart';
import 'package:wallet_app/core/themes/styles.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
        height: 140,
        width: 310,
        decoration: BoxDecoration(
            color: const Color(kPrimaryColor),
            borderRadius: BorderRadius.circular(50)),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 44.0,
                left: 45,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Balance',
                    style: Styles.textstyle18.copyWith(fontSize: 16),
                  ),
                  Text(
                    '\$1.234',
                    style: Styles.textstyle18.copyWith(fontSize: 22),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Card',
                    style: Styles.textstyle18.copyWith(fontSize: 16),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Tap\'n Pay',
                    style: Styles.textstyle18.copyWith(fontSize: 22),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      SvgPicture.asset(
        'assets/svgs/Info Section.svg',
        theme: const SvgTheme(currentColor: Color(0xffffffff)),
      ),
    ]);
  }
}
