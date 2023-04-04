import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_store/Customer%20Widgets/colors.dart';
import 'package:mini_store/Screens/product_details_page.dart';

class ExclusiveOffers extends StatefulWidget {
  const ExclusiveOffers({super.key});

  @override
  State<ExclusiveOffers> createState() => _ExclusiveOffersState();
}

class _ExclusiveOffersState extends State<ExclusiveOffers> {
  List images = [
    'asset/badam.jpg',
    'asset/chana.jpg',
    'asset/choco.jpg',
    'asset/donut.jpg',
    'asset/dryfruits.jpg',
    // 'asset/fries.jpg',
    // 'asset/items.jpg',
    // 'asset/makka.jpg',
    // 'asset/potato.jpg',
    // 'asset/wada.jpg',
    // 'asset/try.webp',
    // 'asset/long.webp',
    // 'asset/lays.webp',
    // 'asset/dhokla.webp',
    // 'asset/dry.webp',
    // 'asset/chips.webp'
  ];

  List productname=[
    'Product 1',
    'Product 2',
    'Product 3',
    'Product 4',
    'Product 5',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(()=>ProductDetailsPage(image:images[index] ,name:productname[index] ,));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  padding:const EdgeInsets.all(2),
                  margin: const EdgeInsets.all(2),
                  height: Get.height * .25,
                  width: Get.width * .35,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black.withOpacity(.5), width: 1),
                      borderRadius:
                           const BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 6,
                        child: Container(
                          // height: Get.height * .15,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              image: DecorationImage(
                                  image: AssetImage(
                                    '${images[index]}',
                                  ),
                                  fit: BoxFit.fill),
                              // border: Border.all(color: Colors.black.withOpacity(.5),width: 2),
          
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              productname[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '\$ 49',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: mainColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          );
        });
  }
}
