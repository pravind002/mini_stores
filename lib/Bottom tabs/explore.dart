import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_store/Customer%20Widgets/colors.dart';
import 'package:mini_store/Screens/favourite.dart';
import 'package:mini_store/Screens/notification.dart';

import '../Screens/best_selling.dart';
import '../Screens/exclusive_offer.dart';
import '../Screens/offer_page.dart';
import '../Screens/popular_items.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:  Drawer(
         child:
         
        //  UserAccountsDrawerHeader(
          
          
          
        //   accountName: Text('Pravind'),
        //   accountEmail: Text('abc123@gmail.com'),
        //   currentAccountPicture: CircleAvatar(),
        //   )
         
          ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: [
       DrawerHeader(
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CircleAvatar(
              radius: 30,
              // backgroundColor: Colors.white,
              backgroundImage: AssetImage('asset/profile.jpg'),
            ),
            Text('Drawer Header'),
          ],
        ),
      ),
      ListTile(leading:const  Icon(Icons.account_circle),
        title: const Text('My Profile'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading:const Icon(Icons.notifications_outlined),
        title: const Text('Notitfication'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),ListTile(
        leading:const  Icon(Icons.local_offer_outlined),
        title: const Text('Offers'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading:const  Icon(Icons.wallet),
        title: const Text('Payment'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        leading: Icon(Icons.info_outline),
        title: const Text('App Info'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(leading:const  Icon(Icons.logout),
        title: const Text('LogOut'),
        onTap: () {
          FirebaseAuth.instance.signOut();
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
      ),
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text('M I N I    S T O R E'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Get.to(()=>const  FavouritePage());
          }, icon: const Icon(Icons.favorite_outline_sharp)),
          IconButton(onPressed: (){
            Get.to(()=>const NotificationPage());
          }, icon: const Icon(Icons.notification_add_outlined))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 20,),
              SizedBox(height: Get.height*.15,
              child: OfferPage(),),
              const SizedBox(height: 20,),
              const Text('Exclusive Offer',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(
                height: Get.height*.25,
                width: Get.width,
                child: const ExclusiveOffers(),
              ),
              const SizedBox(height: 20,),
               const Text('Popular Items',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(
                height: Get.height*.15,
                width: Get.width,
                child: const PopularItems(),
              ),
              SizedBox(
                height: 20,
              ),
               Text('Best Selling',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(
                height: Get.height*.25,
                width: Get.width,
                child: const BestSelling(),
              )
            ],
          ),
        
      ),
    );
  }
}