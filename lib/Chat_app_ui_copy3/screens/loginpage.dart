import 'package:flutter/material.dart';
import 'package:projects/Chat_app_ui_copy3/flat_widgets/flat_info_page_wrapper.dart';


// ignore: use_key_in_widget_constructors
class Loginpage extends StatefulWidget {
  static const String id = "Loginpage";

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
   
    return const Scaffold(
      body:  FlatInfoPageWrapper(
        heading: "Login Page",
        subHeading: "Welcome to Flat Social UI Kit. Please, login to your account to continue using the app.",
      ),
    );
  }
}
