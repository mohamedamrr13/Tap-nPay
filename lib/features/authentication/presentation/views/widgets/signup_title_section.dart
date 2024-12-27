import 'package:flutter/material.dart';
import 'package:wallet_app/core/themes/styles.dart';

class SignUpTitleSection extends StatelessWidget {
  const SignUpTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 110,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 46.5),
          child: Center(
            child: Text(
              'Immediately feel the \n ease of transacting just \n by registering',
              style: Styles.textstyle26,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            'Sign up with',
            style: Styles.textstyle13,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
