import 'package:flutter/material.dart';

import '../../constants/colors.dart';




class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title:const  Text('N O T I F I C A T I O N'),
        centerTitle: true,
      ),
    );
  }
}