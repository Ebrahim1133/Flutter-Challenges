import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0)
          ),
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(Icons.home, color: Color(0xFFEF7532)),
                  Icon(Icons.person_outline, color: Color(0xFF676E79))
                ],
              )
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(Icons.search, color: Color(0xFF676E79)),
                  Icon(Icons.shopping_basket, color: Color(0xFF676E79))
                ],
              )
            ),
          ]
        )
      )
    );
  }
}
