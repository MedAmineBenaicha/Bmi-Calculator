import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFF0a0d22), centerTitle: true),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        bottomAppBarColor: Color(0xFFEB1555),
      ),
      home: InputPage(),
    );
  }
}
