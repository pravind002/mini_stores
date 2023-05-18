import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_store/view/Login/sign_in_page.dart';

import 'package:mini_store/main.dart';

import '../../bottom_tab_bar.dart';

class SignUpPage extends StatefulWidget {
  // final Function onClickSignUp;

  const SignUpPage({super.key,
  //  required this.onClickSignUp
  });

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

// Comtrollers

class SignUpDetails {
  String? id;
  String? fullname;
  String? email;
  String? phoneNumber;
  String? address;


  var data;
   
   SignUpDetails({
     this.id='',
     required this.fullname,required this.email,
     required this.phoneNumber,
     required this.address,
   });

   Map<String, dynamic> toJson() =>{
'id':id,
'fullname':fullname,
'email':email,
'phone_number':phoneNumber,
'address':address,

   };
   static fromJson(data) {}
}

class _SignUpPageState extends State<SignUpPage> {
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpassController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future signUp() async {
    showDialog(
        context: context,
        builder: (context) => const Center(child: CircularProgressIndicator()));

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
    }

    navigatorkey.currentState!.popUntil((route) => route.isActive);
  }

  @override
  void dispose() {

    emailController.dispose();
    passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Future createUser(SignUpDetails user) async {
    final docUser = FirebaseFirestore.instance.collection('singup').doc();
    user.id = docUser.id;

    final json = user.toJson();
    await docUser.set(json);

    await docUser.set(json);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   height: Get.height * .4,
                  //   // width: Get.width,
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Sign Up',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: fullnameController,
                    decoration: const InputDecoration(
                      labelText: 'Full Name',
                    ),
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Full Name';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(labelText: 'Email'),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email Address';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: numberController,
                    decoration:
                        const InputDecoration(labelText: 'Phone Number'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Phone Number';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: addressController,
                    decoration: const InputDecoration(labelText: 'Address'),
                    keyboardType: TextInputType.streetAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter address';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      hintText: 'Password',
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  TextFormField(
                    controller: confirmpassController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        // hintText: 'Enter password',
                        labelText: 'Confirm Password'),
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Eonfirm Password';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     TextButton(
                  //         onPressed: () {},
                  //         child: const Text(
                  //           'Forgot password',
                  //           style: TextStyle(fontSize: 20),
                  //         )),
                  //   ],
                  // ),

                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 55,
                    width: Get.height,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 5, 186, 99)),
                    child: TextButton(
                        onPressed: () {

                          signUp();
                          final user=SignUpDetails(phoneNumber:numberController.text ,
                            fullname: fullnameController.text, email: emailController.text, address: addressController.text);
                            createUser(user);
                            Get.snackbar('Alert', 'Sign Up Successfull !');



                          if (formKey.currentState!.validate()) {
                            Get.offAll(() => const BottomTabpage());
                          }
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        )),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // //  const   Center(child:   Text('OR')),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //   SizedBox(
                  //     height: Get.width*.15,
                  //     width: Get.width*.15,
                  //     child: Image.asset('asset/facebook.png')),
                  //   SizedBox(
                  //     height: Get.width*.15,
                  //     width: Get.width*.15,
                  //     child: Image.asset('asset/google.png')),
                  // ],),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  //  const  Padding(
                  //     padding:  EdgeInsets.only(bottom: 10),
                  //     child: Text('WELCOME TO MINI STORE'),
                  //   )
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(fontSize: 20),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.to(() => const SignInPage());
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(fontSize: 20),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
