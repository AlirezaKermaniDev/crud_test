import 'dart:ui';

import 'package:flutter/material.dart';

/// Base theme of application
ThemeData themeData = ThemeData(
  /// Adding font family to The whole project
  fontFamily: "Fredoka",

  /// Set the [primaryColor] of the App.
  primaryColor: Colors.blueAccent[400],

  /// Set the [inputDecorationTheme] of the App
  inputDecorationTheme: InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: Colors.blueGrey, width: 2.0),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: BorderSide(color: Colors.blueAccent[400]!, width: 1.5),
    ),
  ),

  /// Set the [textTheme]
  textTheme: const TextTheme(

      /// Set a TextStyle for [headline1] texts in the App

      headline1: TextStyle(
          color: Colors.white, fontSize: 23, fontWeight: FontWeight.w900),
      labelMedium: TextStyle(
          color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),
      subtitle1: TextStyle(
          color: Colors.grey, fontSize: 14, fontWeight: FontWeight.bold),
      subtitle2: TextStyle(
          color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
      button: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19)),
);
