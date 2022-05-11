import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//colors used in this app
const Color white = Colors.white;
const Color black = Colors.black;
const Color yellow = Color(0xFFFFD54F);

//default app padding
const double appPadding = 20.0;


storeOnboardInfo() async {
    // ignore: avoid_print
    print("Shared pref called");
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('onBoard', isViewed);
    // ignore: avoid_print
    print(prefs.getInt('onBoard'));
  }