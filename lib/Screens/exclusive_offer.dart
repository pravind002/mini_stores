import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: Get.height * .25,
                width: Get.width * .35,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black.withOpacity(.5), width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      Container(
                        height: Get.height * .15,
                        decoration: BoxDecoration(
                            color: Colors.blue,
image:DecorationImage(image: AssetImage('${images[index]}',),fit: BoxFit.cover) ,
                            // border: Border.all(color: Colors.black.withOpacity(.5),width: 2),

                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                      ),
                     const  Text(
                        'Product Name',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                )),
          );
        });
  }
}
