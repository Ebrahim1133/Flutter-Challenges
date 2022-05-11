// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:projects/Food_app_ui_copy2/item.dart';


class ItemDescription extends StatelessWidget {

  final Item item;

  // ignore: use_key_in_widget_constructors
  const ItemDescription({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: item.color,
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0, top: 48.0),
              child: Row(
                children: <Widget>[

                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.black,
                        size: 28,
                      )
                    ),
                  ),

                ],
              ),
            ),

            Center(
              child: SizedBox(
                height: 120,
                child: Hero(
                  tag: item.title,
                  child: Image.asset(
                    item.imageUrl,
                  ),
                ),
              ),
            ),

            const SizedBox(
              height: 32.0,
            ),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Text(
                        item.title,
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      Text(
                        item.priceDescription,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),

                      const SizedBox(
                        height: 24.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                          // ignore: avoid_unnecessary_containers
                          Container(
                            child: Row(
                              children: <Widget>[

                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.remove,
                                    color: Colors.black,
                                  )
                                ),

                                Container(
                                  color: Colors.grey[200],
                                  width: 48,
                                  height: 48,
                                  child: const Center(
                                    child: Text(
                                      "2",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                                Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.black,
                                  )
                                ),

                              ],
                            )
                          ),

                          // ignore: avoid_unnecessary_containers
                          Container(
                            child: Text(
                              r"$ " + item.price,
                               style: const TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            )
                          ),

                        ],
                      ),

                      const SizedBox(
                        height: 24.0,
                      ),

                      Expanded(
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[

                              const Text(
                                "Product description",
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),

                              Text(
                                item.description,
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 24.0,
                      ),

                      Row(
                        children: <Widget>[

                          // ignore: avoid_unnecessary_containers
                          Container(
                            child: Container(
                              height: 72,
                              width: 72,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                border: Border.all(
                                  color: item.color,
                                  width: 2,
                                ),
                              ),
                              child: Icon(
                                Icons.favorite,
                                color: item.color,
                                size: 36,
                              ),
                            ),
                          ),

                          const SizedBox(
                            width: 16,
                          ),

                          Expanded(
                            child: Container(
                              height: 72,
                              decoration: BoxDecoration(
                                color: item.color,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "Add to cart",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  )
                                ),
                              ),
                            ),
                          )

                        ],
                      )

                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}