import 'package:flutter/material.dart';
import 'package:wallet_app/core/helper/constants.dart';
import 'package:wallet_app/core/themes/styles.dart';

class ActionButton extends StatelessWidget {
  final Widget icon;
  final String label;
  final VoidCallback onPressed;

  const ActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 12,
                      color: const Color(kPrimaryColor).withOpacity(0.15),
                      spreadRadius: 0,
                      offset: const Offset(0, 4))
                ],
                color: Colors.white),
            child: IconButton(
              icon: icon,
              onPressed: onPressed,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            label,
            style:
                Styles.textstyle13.copyWith(color: const Color(kPrimaryColor)),
          ),
        ],
      ),
    );
  }
}
