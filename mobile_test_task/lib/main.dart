import 'package:flutter/material.dart';
import 'package:mobile_test_task/screens/main_screen.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Mark Pro',
        appBarTheme: const AppBarTheme(color: Color(0xffe5e5e5), elevation: 0),
        scaffoldBackgroundColor: const Color(0xffe5e5e5),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xff010035),
          elevation: 0,
        ),
        colorScheme: const ColorScheme(
          primary: Color(0xffff6e4e),
          onPrimary: Color(0xff010035),
          secondary: Color(0xffff6e4e),
          onSecondary: Colors.red,
          error: Colors.red,
          onError: Colors.red,
          background: Color(0xffE5E5E5),
          onBackground: Color(0xffE5E5E5),
          surface: Colors.red,
          onSurface: Colors.red,
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(fontWeight: FontWeight.w800),
          headline2: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
          headline3: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
          headline4: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      home: const MainScreen()));
}
