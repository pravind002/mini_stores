import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExclusiveOffers extends StatefulWidget {
  const ExclusiveOffers({super.key});

  @override
  State<ExclusiveOffers> createState() => _ExclusiveOffersState();
}

class _ExclusiveOffersState extends State<ExclusiveOffers> {
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
    child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(children: [
        Container(
          height: Get.height*.15,
           decoration: BoxDecoration(color: Colors.blue,
  
       // border: Border.all(color: Colors.black.withOpacity(.5),width: 2),
  
        borderRadius:const BorderRadius.all(Radius.circular(10))
  
      ),

        ),
Text('Product Name',
textAlign: TextAlign.center,
style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)

      ],),
    )
  
  ),
);
    });
  }
}