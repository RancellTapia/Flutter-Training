

import 'package:components_app/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {

  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: Delete home screen route
    MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(), icon: Icons.home),
    MenuOption(route: 'listview', name: 'List View 1', screen: const ListviewScreen(), icon: Icons.list_alt),
    MenuOption(route: 'listview2', name: 'List View 2', screen: const ListviewScreen2(), icon: Icons.list),
    MenuOption(route: 'alert', name: 'Alert Screen', screen: const AlertScreen(), icon: Icons.exit_to_app_outlined),
    MenuOption(route: 'card', name: 'Card Screen', screen: const CardScreen(), icon: Icons.card_giftcard),
  ];

  
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen,});
    } 

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //       'home': (BuildContext context) => const HomeScreen(),
  //       'listview': (BuildContext context) => const ListviewScreen(),
  //       'listview2': (BuildContext context) => const ListviewScreen2(),
  //       'alert': (BuildContext context) => const AlertScreen(),
  //       'card': (BuildContext context) => const CardScreen(),

  //     };
  
  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen()
          );
      }
}
