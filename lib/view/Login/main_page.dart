import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mini_store/view/Login/sign_in_page.dart';

import '../../bottom_tab_bar.dart';



class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream:FirebaseAuth.instance.authStateChanges() ,
      builder: (context, snapshot) {
        if (snapshot.hasData){
        return const  BottomTabpage();
        } else {
          return const  SignInPage();
        }
      },
    );
  }
}