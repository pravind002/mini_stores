import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_store/Login/main_page.dart';
import 'package:mini_store/Login/sign_in_page.dart';
import 'package:mini_store/bottom_tab_bar.dart';

Future main() async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();

  runApp(const MyApp());
}

final navigatorkey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home:const  MainPage(),
    );
  }
}

