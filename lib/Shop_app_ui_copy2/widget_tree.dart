import 'package:flutter/material.dart';
import 'package:projects/Shop_app_ui_copy2/responsive_layout.dart';


import 'eCommerce/e_com_drawer.dart';
import 'eCommerce/e_com_item_description.dart';
import 'eCommerce/e_com_items.dart';

// ignore: use_key_in_widget_constructors
class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: ResponsiveLayout(
       
        // ignore: prefer_const_constructors
        iphone:ECommerceItems(),
        ipad: Row(
          children: [

             Expanded(
              flex: 9,
              // ignore: prefer_const_constructors
              child:ECommerceItems(),
            ),
             Expanded(
              flex: 9,
              // ignore: prefer_const_constructors
              child: ECommerceItemDescription(),
            ),
          ],
        ),
        macbook: Row(
          children: [
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              // ignore: prefer_const_constructors
              child:ECommerceItems(),
            ),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              // ignore: prefer_const_constructors
              child: ECommerceItemDescription(),
            ),Expanded(
              flex: _size.width > 1340 ? 2 : 4,
              // ignore: prefer_const_constructors
              child: ECommerceDrawer(),
            ),
          ],
        ),
      ), 
    );
  }
}
