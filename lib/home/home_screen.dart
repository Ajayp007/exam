import 'package:exam/utils/productlist.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool burger = true, pizza = true, salads = true;
  String? select = 'all';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          leading: const Icon(
            Icons.menu,
            size: 30,
            color: Colors.white,
          ),
          actions: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'cartscreen');
              },
              child: const Icon(
                Icons.notifications,
                size: 28,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black12,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Every Bite a",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const Text(
                  "Better Burger",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Burger",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "pizza",
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 20),
                    ),
                    Text(
                      "Salads",
                      style:
                          TextStyle(color: Colors.grey.shade700, fontSize: 20),
                    ),
                    const SizedBox(width: 5),
                    const Icon(
                      Icons.sort_rounded,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.grey.shade700,
                  height: 50,
                  child: DropdownButton(
                    value: select,
                    isExpanded: true,
                    padding: const EdgeInsets.all(10),
                    items: const [
                      DropdownMenuItem(
                        value: "all",
                        child: Text(
                          "All",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      DropdownMenuItem(
                        value: "burger",
                        child: Text("Burger"),
                      ),
                      DropdownMenuItem(
                        value: "pizza",
                        child: Text("pizza"),
                      ),
                      DropdownMenuItem(
                        value: "salads",
                        child: Text("salads"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        select = value;

                        if (select == 'all') {
                          burger = true;
                          pizza = true;
                          salads = true;
                        } else if (select == 'burger') {
                          burger = true;
                          pizza = false;
                          salads = false;
                        } else if (select == 'pizza') {
                          burger = false;
                          pizza = true;
                          salads = false;
                        } else {
                          burger = false;
                          pizza = false;
                          salads = true;
                        }
                      });
                    },
                  ),
                ),
                Visibility(
                  visible: burger,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: product
                        .map((e) => Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'product');
                          },
                          child: SizedBox(
                            height: 300,
                            width: 150,
                            child: Column(
                              children: [
                                Image.asset(
                                  "${e['image']}",
                                  height: 200,
                                ),
                                Text(
                                  "${e['chat']}",
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${e['about']}",
                                  style: const TextStyle(
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$${e['price']}",
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18),
                                    ),
                                    const Icon(Icons.add,
                                        color: Colors.white),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 20),
                Visibility(
                  visible: pizza,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: pizza_
                        .map((e) => Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(context, 'product');
                                  },
                                  child: SizedBox(
                                    height: 300,
                                    width: 150,
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "${e['image']}",
                                          height: 200,
                                        ),
                                        Text(
                                          "${e['chat']}",
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "${e['about']}",
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "\$${e['price']}",
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18),
                                            ),
                                            const Icon(Icons.add,
                                                color: Colors.white),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
