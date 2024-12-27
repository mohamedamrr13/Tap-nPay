import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/core/route/approuter.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const MyWallet(),
  ));
}

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Quicksand',
      ),
    );
  }
}
