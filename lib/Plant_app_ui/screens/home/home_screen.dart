import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projects/Plant_app_ui/components/my_bottom_nav_bar.dart';
import 'package:projects/Plant_app_ui/constants.dart';
import 'package:projects/Plant_app_ui/screens/home/components/body.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor:kPrimaryColor,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}
