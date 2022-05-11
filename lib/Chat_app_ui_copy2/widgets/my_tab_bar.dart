import 'package:flutter/material.dart';
import '../app_theme.dart';

class MyTabBar extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  MyTabBar({

    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      height: 80,
      color: MyTheme.kPrimaryColor,
      child: TabBar(
        controller: tabController,
        indicator: ShapeDecoration(
            color: MyTheme.kAccentColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        tabs: const [
          Tab(
            icon: Text(
              'Chat',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Tab(
            icon: Text(
              'Status',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Tab(
            icon: Text(
              'Call',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
