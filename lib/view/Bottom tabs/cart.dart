import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<int> _counters = List.filled(10, 1);

  void _incrementCounter(int index) {
    setState(() {
      _counters[index]++;
    });
  }

  void _decrementCounter(int index) {
    setState(() {
      if (_counters[index] > 1) {
        _counters[index]--;
      } else {
        // Show Snackbar when counter is already at 0
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: Action not allowed'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    });
  }

  void _removeItem(int index) {
    setState(() {
      _counters.removeAt(index);
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
          ),
        ),
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemCount: _counters.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Divider(
                color: Colors.black.withOpacity(.5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: Get.width * .3,
                      width: Get.width * .3,
                      child: Image.asset('asset/brocoli.webp'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Broccoli\n',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: '${_counters[index]} kg',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(.5),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                _decrementCounter(index);
                              },
                              icon: const Icon(Icons.remove),
                            ),
                            Text(
                              '${_counters[index]}',
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                _incrementCounter(index);
                              },
                              icon: const Icon(Icons.add),
                            ),
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
                          onPressed: () {
                            _removeItem(index);
                          },
                          icon: const Icon(
                            Icons.close,
                            size: 30,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '\$ ${_counters[index] * 4.5}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
