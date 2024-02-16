import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          leading: const Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black12,
        body: Column(
          children: [
            Image.asset(
              "${data['image']}",
            ),
            const Text(
                "However, the term was used in an article in the Binghamton (New York) Press[17] in May 1960 and a syndicated article appearing in several American newspapers on October 6, 1960, uses the Tex-Mex label to describe a series of recipes, including chili and enchiladas."),
          Container(
            height: 50,
            width: 80,
            decoration: const BoxDecoration(color: Colors.white),

          )],
        ),
      ),
    );
  }
}
