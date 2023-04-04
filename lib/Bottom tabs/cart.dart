import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _counter = 1;
  // int _decrement=0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      // _decrement--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
          centerTitle: true,
          title: const Text(
            'My Cart',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Divider(
                    color: Colors.black.withOpacity(.5),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            height: Get.width * .3,
                            width: Get.width * .3,
                            child: Image.asset('asset/brocoli.webp')),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            RichText(
                                text: TextSpan(children: [
                              const TextSpan(
                                  text: 'Broccoli\n',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: '$_counter kg',
                                  style: TextStyle(
                                    color: Colors.black.withOpacity(.5),
                                    fontSize: 18,
                                  ))
                            ])),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      _decrementCounter();

                                      // _decrementCounter();
                                    },
                                    icon: const Icon(Icons.remove)),
                                Text(
                                  '$_counter',
                                  style: const TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                IconButton(
                                    onPressed: () {
                                      _incrementCounter();
                                    },
                                    icon: const Icon(Icons.add)),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.close,
                                  size: 30,
                                )),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              '\$ ${_counter * 4.5}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  //  Divider(
                  //   color: Colors.black.withOpacity(.5),
                  // ),
                ],
              );
            }));
  }
}
