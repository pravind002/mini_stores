// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';



class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPage();
}

class _CategoryPage extends State<CategoryPage> {

List images=[
  'asset/badam.jpg',
  'asset/chana.jpg',
  'asset/choco.jpg',
  'asset/donut.jpg',
  'asset/dryfruits.jpg',
  'asset/fries.jpg',
  'asset/items.jpg',
  'asset/makka.jpg',
  'asset/potato.jpg',
  'asset/wada.jpg',
  'asset/try.webp',
  'asset/long.webp',
  'asset/lays.webp',
  'asset/dhokla.webp',
  'asset/dry.webp',
  'asset/chips.webp'
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:Text ('B R A N D S',style: TextStyle(color: mainColor),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 60,
                  width: Get.width,
                  decoration:const BoxDecoration(color: Color(0xffF2F3F2),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
    
                    
                  ),
                  child: Row(children: [
                    IconButton(onPressed: (){}, icon:const Icon(Icons.search,size: 30,)),
                    Flexible
                    (
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.black
                            .withOpacity(.5)
                            ,fontSize: 18)
                        ),
                      ),
                    )
                  ],),
                ),
              ),
          Flexible(
            child: GridView.builder(
              itemCount: images.length,
              itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: Get.height*.3,
                  width: Get.width*.3,
                  decoration: BoxDecoration(
                    color: mainColor.withOpacity(.1),
                    border: Border.all(color: Colors.black.withOpacity(.5)),
                    borderRadius:const  BorderRadius.all(Radius.circular(20))
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Expanded(flex: 7,
                      child: Container(
                        decoration: BoxDecoration(color:Colors.green,
                          image: DecorationImage(image: AssetImage('${images[index]}',
                        
                        ),fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(20)),
                        // child: Image.asset('${images[index]}',
                        // fit: BoxFit.fill,
                        // ),
                      ),
                    ),
                 const  Expanded(
                    flex: 3,
                    child: const   Padding(
                        padding:  EdgeInsets.all(15),
                        child: Text('Name'),
                      ),
                  )
                  ],),
                ),
              );
            }, gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 120 / 150,
                                  crossAxisCount: 2,
                              ),
                              
                              ),
          ),
        ],
      )

    );
  }
}