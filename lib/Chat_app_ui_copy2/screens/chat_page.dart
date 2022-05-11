import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class ChatPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          RecentChats(),
          AllChats(),
        ],
      ),
    );
  }
}
