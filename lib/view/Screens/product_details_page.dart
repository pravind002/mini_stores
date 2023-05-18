import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';



class ProductDetailsPage extends StatelessWidget {
  ProductDetailsPage({super.key, required this.image, required this.name});
  final String image;
  final String name;

  var isselected = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('PRODUCT   DETAILS'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.amber,
              margin: EdgeInsets.all(10),
              height: Get.height * .28,
              width: Get.width,
              child: Image.asset(image),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                Obx(() {
                  return IconButton(
                      onPressed: () {
                        isselected.value = !isselected.value;
                      },
                      icon: isselected.value
                          ? Icon(Icons.favorite_outline)
                          : Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ));
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
