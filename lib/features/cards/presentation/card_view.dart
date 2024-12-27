import 'package:flutter/material.dart';
import 'package:wallet_app/core/widgets/floating_nav_bar.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Column(children: []),
          FloatingNavBar(),
        ],
      ),
    ));
  }
}
