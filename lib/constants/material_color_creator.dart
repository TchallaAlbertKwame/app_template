import 'package:flutter/material.dart';
/*
###################################################################
This function helps you change the default material color so you can use the Hexadecimal code instead of the default color that need to be assigned in your 'main.dart' file.
 Remember you needed to use an explicit color say red, green etc...
 Now with this function, you can use the Hex code to match the color of the brand you are working with.

###################################################################
 */

MaterialColor createMaterialBrandColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }
  return MaterialColor(color.value, swatch);
}
