import 'package:flutter/material.dart';

snackBar(String title) => SnackBar(
      content: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15),
      ),
    );
