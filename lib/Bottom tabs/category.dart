import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_store/Screens/best_selling.dart';
import 'package:mini_store/Screens/exclusive_offer.dart';
import 'package:mini_store/Screens/offer_page.dart';
import 'package:mini_store/Screens/popular_items.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPage();
}

class _CategoryPage extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:Text ('Brands',style: TextStyle(color: Colors.black),),
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
              itemCount: 20,
              itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: Get.height*.3,
                  width: Get.width*.3,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black.withOpacity(.5)),
                    borderRadius:const  BorderRadius.all(Radius.circular(20))
                  ),
                ),
              );
            }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 120 / 150,
                                  crossAxisCount: 2,
                              ),),
          ),
        ],
      )

    );
  }
}