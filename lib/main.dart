<<<<<<< HEAD
// ignore: unused_import
import 'package:sofiacare/views/home/home_screen.dart';
// ignore: unused_import
import 'package:sofiacare/views/welcome_animation/components/welcome_view.dart';
// ignore: unused_import
import 'package:sofiacare/views/welcome_animation/introduction_animation_screen.dart';
=======

import 'package:sofiacare/start.dart';
>>>>>>> 4365e2e7383b743d884ca3d6d25ca7a4064b18f4
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  static var navigatorKey;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Start());
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
