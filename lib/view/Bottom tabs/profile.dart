import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../constants/colors.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

//  SignUpDetails signUpDetails=SignUpDetails(fullname: , email: '', phoneNumber: '87656755', address: '');

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 50,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Pravind',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
          Text(
            '98765433456',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Expanded(
            child: Container(
              width: Get.width,
              // padding: EdgeInsets.all(30),
              margin: const EdgeInsets.only(top: 40),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 30, left: 30),
                      child: Text(
                        'PROFILE',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: mainColor,
                        radius: 30,
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      title: const Text(
                        'Personal Details',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text(
                        'Change your name,email and other details',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: mainColor,
                        radius: 30,
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      title: const Text(
                        'Your Orders',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text(
                        'Change your name,email and other details',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: mainColor,
                        radius: 30,
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      title: const Text(
                        'Notification',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text(
                        'Change your name,email and other details',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: mainColor,
                        radius: 30,
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      title: const Text(
                        'Payment',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text(
                        'Change your name,email and other details',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: mainColor,
                        radius: 30,
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      title: const Text(
                        'Manage Address',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text(
                        'Change your name,email and other details',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: mainColor,
                        radius: 30,
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      title: const Text(
                        'App Info',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text(
                        'Change your name,email and other details',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: mainColor,
                        radius: 30,
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      title: const Text(
                        'Help',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: const Text(
                        'Change your name,email and other details',
                        style: TextStyle(
                            color: Colors.black54, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
