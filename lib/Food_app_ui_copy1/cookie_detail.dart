// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:projects/Food_app_ui_copy1/bottom_bar.dart';

class CookieDetail extends StatelessWidget {
  final assetPath, cookieprice, cookiename;

  // ignore: use_key_in_widget_constructors
  const CookieDetail({this.assetPath, this.cookieprice, this.cookiename});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text('Pickup',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),

      body: ListView(
        children: [
          const SizedBox(height: 15.0),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'Cookie',
              style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 42.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))
            ),
          ),
            const SizedBox(height: 15.0),
            Hero(
              tag: assetPath,
              child: Image.asset(assetPath,
              height: 150.0,
              width: 100.0,
              fit: BoxFit.contain
              )
            ),
            const SizedBox(height: 20.0),
            Center(
              child: Text(cookieprice,
                  style: const TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF17532))),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: Text(cookiename,
                  style: const TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 24.0)),
            ),
            SizedBox(height: 20.0),
            Center(
              // ignore: sized_box_for_whitespace
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: const Text('Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavor.',
                textAlign: TextAlign.center,
                style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 16.0,
                      color: Color(0xFFB4B8B9))
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: const Color(0xFFF17532)
                ),
                child: const Center(
                  child: Text('Add to cart',
                    style: TextStyle(
                      fontFamily: 'Varela',
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                ),
                  )
                )
              )
            )
        ]
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {},
      backgroundColor: const Color(0xFFF17532),
      child: const Icon(Icons.fastfood),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
