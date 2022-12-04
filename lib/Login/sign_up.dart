import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_store/Login/sign_in_page.dart';
import 'package:mini_store/bottom_tab_bar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpassController = TextEditingController();

  final formKey = GlobalKey<FormState>();

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
                    decoration: const InputDecoration(labelText: 'Phone Number'),
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
                          if (formKey.currentState!.validate())
                          {
            
                          Get.to(()=>const  BottomTabpage());
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
