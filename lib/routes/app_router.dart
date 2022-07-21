import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/models/models.dart';
import 'package:flutter_application_widgets/screens/avatar_screen.dart';
import 'package:flutter_application_widgets/screens/card_screen.dart';
import 'package:flutter_application_widgets/screens/listview_builder_screen.dart';

import '../screens/inputs_screens.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOptions(
        route: 'listview1',
        name: 'List View 1',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOptions(
        route: 'listview2',
        name: 'List View 2',
        screen: const ListView2Screen(),
        icon: Icons.list_alt_outlined),
    MenuOptions(
        icon: Icons.credit_score,
        name: 'Card Screen',
        route: 'cardscreen',
        screen: const CardScreen()),
    MenuOptions(
        icon: Icons.alarm_on_rounded,
        name: 'Alert Screen',
        route: 'alertscreen',
        screen: const AlertScreen()),
    MenuOptions(
        icon: Icons.person,
        name: 'Avatar Screen',
        route: 'avatarscreen',
        screen: const AvatarScreen()),
    MenuOptions(
        icon: Icons.input_rounded,
        name: 'Inputs Screen',
        route: 'inputscreen',
        screen: InputScreens()),
    MenuOptions(
        icon: Icons.list,
        name: 'List View Screen',
        route: 'listviewscreen',
        screen: ListViewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext context)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext context)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  // };
}
