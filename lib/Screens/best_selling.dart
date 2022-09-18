import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BestSelling extends StatefulWidget {
  const BestSelling({super.key});

  @override
  State<BestSelling> createState() => _BestSelling();
}

class _BestSelling extends State<BestSelling> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index){
return Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Container(
  
    height: Get.height*.25,
  
    width: Get.width*.35,
  
    decoration: BoxDecoration(
  
      border: Border.all(color: Colors.black.withOpacity(.5),width: 2),
  
      borderRadius:const BorderRadius.all(Radius.circular(10))
  
    ),
  
  ),
);
    });
  }
}