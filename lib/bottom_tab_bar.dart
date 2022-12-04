
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_store/Bottom%20tabs/cart.dart';
import 'package:mini_store/Bottom%20tabs/explore.dart';
import 'package:mini_store/Customer%20Widgets/colors.dart';
import 'package:mini_store/Screens/favourite.dart';
import 'package:mini_store/Bottom%20tabs/profile.dart';
import 'package:mini_store/Bottom%20tabs/category.dart';


class BottomTabpage extends StatefulWidget {
  const BottomTabpage({super.key});

  @override
  State<BottomTabpage> createState() => _BottomTabpageState();
}

class _BottomTabpageState extends State<BottomTabpage> {
int currenttab=0;
final List screens=const [
  
  ExplorePage(),
  CategoryPage(),
  CartPage(),
 // FavouritePage(),
  ProfilePage()
];

final PageStorageBucket bucket=PageStorageBucket();
Widget currebtScreen=const ExplorePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      //appBar: AppBar(title: const Text('Bottombar',style: TextStyle(color: Colors.black),),),
    //  drawer: Drawer(
    //   child: IconButton(onPressed: (){}, icon: Icon(Icons.person)),
    //  ),
     body: PageStorage(
      bucket: bucket,
      child: currebtScreen),



    //  floatingActionButton: FloatingActionButton(onPressed: (){},
    //  child: const Icon(Icons.add,color: Colors.black,),),
    //  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // shape: const CircularNotchedRectangle(),
        // notchMargin: 10,
        child: SizedBox(
          height: 60,
          width: Get.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            MaterialButton(onPressed: (){
              setState(() {
                 currebtScreen=const ExplorePage();
              currenttab=0;
              });
             
            },
             minWidth: 40,
             child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.explore,
            color: currenttab==0? mainColor:null,),
             Text('Explore',style: TextStyle(
            color: currenttab==0? mainColor:null,
             ),)
             ],),
             ),
            MaterialButton(onPressed: (){
              setState(() {
                 currebtScreen=const CategoryPage();
              currenttab=1;
              });
             
            },
             minWidth: 40,
             child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.category,
            color: currenttab==1? mainColor:null,),
            Text('Category',
            style: TextStyle(
            color: currenttab==1? mainColor:null,
             ),)
             ],),
             ),
             MaterialButton(onPressed: (){
              setState(() {
                 currebtScreen=const CartPage();
              currenttab=2;
              });
             
            },
             minWidth: 40,
             child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.shopping_cart,
            color: currenttab==2? mainColor:null,),
             Text('Cart',style: TextStyle(
            color: currenttab==2? mainColor:null,
             ),)
             ],),
             ),
           
             
          
           
            MaterialButton(onPressed: (){
              setState(() {
                 currebtScreen=const ProfilePage();
              currenttab=4;
              });
             
            },
             minWidth: 40,
             child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.person,
            color: currenttab==4? mainColor:null,),
            Text('Account',
            style: TextStyle(
            color: currenttab==4? mainColor:null,
             ),)
             ],),
             ), 
           
            ],)
          )
        


      ),
    );
  }
}