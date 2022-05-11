
import 'package:flutter/material.dart';
import 'package:projects/Chat_app_ui_copy3/flat_widgets/flat_info_page_wrapper.dart';
import 'package:projects/Chat_app_ui_copy3/flat_widgets/flat_primary_button.dart';

import 'homepage.dart';

// ignore: use_key_in_widget_constructors
class Aboutpage extends StatefulWidget {
  static const String id = "Aboutpage";

  @override
  _AboutpageState createState() => _AboutpageState();
}

class _AboutpageState extends State<Aboutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlatInfoPageWrapper(
        heading: "About Flat Social",
        subHeading: "Flutter UI Kit - v1.1",
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).primaryColorDark.withOpacity(0.54),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        footer: Container(
          margin: const EdgeInsets.symmetric(
            vertical: 16.0,
          ),
          child: FlatPrimaryButton(
            onPressed: () {
              Navigator.pushNamed(context, Homepage.id);
            },
            prefixIcon: Icons.arrow_back,
            textAlign: TextAlign.right,
            text: "Back to Homepage",
          ),
        ),
      ),
    );
  }
}
