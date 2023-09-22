import 'package:flutter/material.dart';
import 'package:food/screen%20/Cart.dart';
import 'package:food/screen%20/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'homepage': (context) => const myApp(),
        '/': (context) => const Cartpage(),
      },
    ),
  );
}
