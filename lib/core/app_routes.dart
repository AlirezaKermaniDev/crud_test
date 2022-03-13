import 'package:flutter/material.dart';

/// Initial routes and pages of the project.
/// It is a map that 'the `Name` of thr route is [key] of the map' and 'the `Widget` of the page is [value] of the map'.
/// Widget should return by a function that pass [BuildContext] example => `(context) => LoginPage()`
Map<String, Widget Function(BuildContext)> routes = {};
