import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mini_store/Login/sign_up.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Future Login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: Get.height * .4,
                  // width: Get.width,
                ),
                const Text(
                  'Login',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: 'Enter email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field can\'t be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Enter password',
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field can\'t be empty';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot password',
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                ),

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
                        if (formKey.currentState!.validate()) {
                          Login();
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                //  const   Center(child:   Text('OR')),
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
                const SizedBox(
                  height: 10,
                ),
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
                      'New User ?',
                      style: TextStyle(fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(() =>  SignUpPage());
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(fontSize: 20),
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
