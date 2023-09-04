import 'package:fivoza_learning/core/res/colours.dart';
import 'package:fivoza_learning/core/res/fonts.dart';
import 'package:fivoza_learning/core/services/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(accentColor: Colours.primaryColour),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: Fonts.poppins,
        appBarTheme: const AppBarTheme(color: Colors.transparent),
      ),
      onGenerateRoute: generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
