import 'package:flutter/material.dart';

import 'constants/material_color_creator.dart';
import 'constants/styles.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: createMaterialBrandColor(kDefaultAppColor),
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all<Color>(Colors.black45),
          trackColor: MaterialStateProperty.all<Color>(Colors.black45),
        ),
        fontFamily: kMainFont,
      ),
      home: const MyApp(), // TODO: initial screen when the app is started
    );
  }
}
