import 'package:flutter/material.dart';
import 'package:wallet_app/core/route/approuter.dart';

const int kPrimaryColor = 0xff000000;
const List<String> routes = [
  AppRouter.homeView,
  AppRouter.cardView,
];

ValueNotifier<int> currentIndex = ValueNotifier<int>(0);
