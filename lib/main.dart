
import 'package:exam/home/cart_screen.dart';
import 'package:exam/home/home_screen.dart';
import 'package:exam/home/product_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homescreen(),
        'product' : (context) => const Product(),
        'cartscreen' : (context) => const CartScreen(),
      },
    ),
  );
}
