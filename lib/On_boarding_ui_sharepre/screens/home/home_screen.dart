import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),

      ),
      body:const Center(
        child: Text('Home Screen'),
      )
      
    );
  }
}