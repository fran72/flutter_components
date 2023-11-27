import 'package:flutter/material.dart';
import 'package:flutter_app_cap6/models/menu_option.dart';
import 'package:flutter_app_cap6/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'slider'; //= 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listView1',
        name: 'List View 1 Screen',
        screen: const Listview1Screen(),
        icon: Icons.vaccines),
    MenuOption(
        route: 'listView2',
        name: 'List View 2 Screen',
        screen: const Listview2Screen(),
        icon: Icons.cable),
    MenuOption(
        route: 'alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.alarm),
    MenuOption(
        route: 'card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_giftcard),
    MenuOption(
        route: 'avatar',
        name: 'Avatar Screen',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOption(
        route: 'animated',
        name: 'Animated Screen',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_outlined),
    MenuOption(
        route: 'inputs',
        name: 'Inputs Screen',
        screen: const InputsScreen(),
        icon: Icons.input_outlined),
    MenuOption(
        route: 'slider',
        name: 'Slider Screen',
        screen: const SliderScreen(),
        icon: Icons.sledding),
    MenuOption(
        route: 'listview_builder',
        name: 'Listview Builder Screen',
        screen: const ListviewBuilderScreen(),
        icon: Icons.sledding),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> approutes = {};

    approutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      approutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return approutes;
  }
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listView1': (BuildContext context) => const Listview1Screen(),
  //   'listView2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
