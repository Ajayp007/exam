import 'package:exam/utils/productlist.dart';
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
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black12,
        body: Column(
          children: [
            Image.asset(
              "${data['image']}",
            ),
            const SizedBox(height: 20),
            Text(
              "${data['name']}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "However, the term was used in an article in the Binghamton (New York) Press[17] in May 1960 and a syndicated article appearing in several American newspapers on October 6, 1960, uses the Tex-Mex label to describe a series of recipes, including chili and enchiladas.",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            InkWell(
              onTap: () {
                cart.add(data);
                Navigator.pop(context);
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Center(
                    child: Text(
                  "\$${data['price']}",
                  style: const TextStyle(fontSize: 20),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
