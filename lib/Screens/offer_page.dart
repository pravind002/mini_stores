import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OfferPage extends StatefulWidget {
  const OfferPage({super.key});

  @override
  State<OfferPage> createState() => _OfferPage();
}

class _OfferPage extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
return Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(
  
    height: Get.height*.15,
  
    width: Get.width*.6,
  
    decoration: BoxDecoration(
  
      border: Border.all(color: Colors.black.withOpacity(.5),width: 2),
  
      borderRadius:const BorderRadius.all(Radius.circular(10))
  
    ),
  
  ),
  
);
    });
  }
}