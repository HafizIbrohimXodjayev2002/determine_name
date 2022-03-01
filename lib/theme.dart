import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
    inputDecorationTheme: inputDecorationTheme(),
    textTheme: textTheme(),
    primaryIconTheme: iconThemeData(),
    iconTheme: iconThemeData(),
  );
}

 InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
     borderRadius: BorderRadius.all(Radius.circular(15)),
     borderSide: BorderSide(color: Colors.teal, width: 1.5),
  );
  return InputDecorationTheme(
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
  );
}

  TextTheme textTheme() {
  return const TextTheme(
    headline6: TextStyle(color: Colors.teal, fontSize: 16),
  );
}

IconThemeData iconThemeData() {
  return const IconThemeData(
    color: Colors.teal,
  );
}