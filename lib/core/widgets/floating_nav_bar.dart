import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wallet_app/core/helper/constants.dart';

class FloatingNavBar extends StatefulWidget {
  const FloatingNavBar({super.key});

  @override
  State<FloatingNavBar> createState() => _FloatingNavBarState();
}

class _FloatingNavBarState extends State<FloatingNavBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 130,
        child: FloatingNavbar(
          onTap: (index) {
            if (currentIndex.value != index) {
              setState(() {
                currentIndex.value = index; // Update the current index first
              });
              GoRouter.of(context)
                  .push(routes[currentIndex.value]); // Navigate to the route
            }
          },
          padding: const EdgeInsets.symmetric(vertical: 16),
          selectedBackgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          borderRadius: 24,
          iconSize: 32,
          items: [
            FloatingNavbarItem(icon: Iconsax.wallet_2),
            FloatingNavbarItem(icon: Iconsax.cards),
            FloatingNavbarItem(icon: Iconsax.notification),
            FloatingNavbarItem(icon: Iconsax.setting),
          ],
          currentIndex: currentIndex.value,
        ),
      ),
    );
  }
}
