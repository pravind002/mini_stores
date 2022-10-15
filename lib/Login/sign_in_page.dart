import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            SizedBox(
              height: Get.height*.4,
              // width: Get.width,
            ),
          const   Text('Get your groceries with \nMiniStore',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.w500),),
           const  TextField(
            decoration: InputDecoration(hintText: 'Enter Number',
            ),
          ),
         const  Text('OR'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            SizedBox(
              height: Get.width*.15,
              width: Get.width*.15,
              child: Image.asset('asset/facebook.png')),
            SizedBox(
              height: Get.width*.15,
              width: Get.width*.15,
              child: Image.asset('asset/google.png')),
          ],),
         const  SizedBox(height: 10,),
         const  Padding(
            padding:  EdgeInsets.only(bottom: 10),
            child: Text('WELCOME TO MINI STORE'),
          )
          ],),
        ),
      ),
    );
  }
}