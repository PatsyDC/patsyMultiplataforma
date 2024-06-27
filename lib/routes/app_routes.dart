import 'package:fl_components/screens/animated_screen.dart';
import 'package:fl_components/screens/avatar.screen.dart';
import 'package:flutter/material.dart';
import '../models/menu_option.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(route: 'home', icon: Icons.house_siding_sharp, name: 'HomeScreen', screen: const HomeScreen()),
    MenuOption(route: 'listview1', icon: Icons.list_alt_rounded, name: 'ListView1', screen: const ListView1Screen()),
    MenuOption(route: 'listview2', icon: Icons.list_alt_rounded, name: 'ListView2', screen: const ListView2Screen()),
    MenuOption(route: 'card', icon: Icons.list_alt_rounded, name: 'CardScreen', screen: const CardScreen()),
    MenuOption(route: 'alert', icon: Icons.list_alt_rounded, name: 'Alert', screen: const AlertScreen()),
    MenuOption(route: 'loginCofee', icon: Icons.coffee_sharp, name: 'Login Coffe', screen: const LoginCafe()),
    MenuOption(route: 'avatar', icon: Icons.all_inclusive_sharp, name: 'AvatarScreen', screen: const AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.animation, name: 'AnimatesScreen', screen: const AnimatedScreen()),
    MenuOption(route: 'login', icon: Icons.login , name: 'Login', screen: const LoginScreen())

  ];






  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1':(BuildContext context) => const ListView1Screen(),
    'listview2':(BuildContext context) => const ListView2Screen(),
    'card':(BuildContext context) => const CardScreen(),
    'alert':(BuildContext context) => const AlertScreen()
  };*/

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final options  in MenuOptions){
      appRoutes.addAll({options.route:(BuildContext context) => options.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}