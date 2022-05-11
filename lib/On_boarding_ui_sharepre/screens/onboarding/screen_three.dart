import 'package:flutter/material.dart';
import 'package:projects/On_boarding_ui_sharepre/constants/constants.dart';
import 'package:projects/On_boarding_ui_sharepre/screens/home/home_screen.dart';

import 'dart:math' as math;

import 'package:projects/On_boarding_ui_sharepre/screens/onboarding/components/slanding_clipper.dart';



// ignore: use_key_in_widget_constructors
class OnboardingScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  width: size.width,
                  height: size.height * 0.6,
                  fit: BoxFit.cover,
                  image: const AssetImage('assets/images/onboard3.png'),
                ),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: ClipPath(
                    clipper: SlandingClipper(),
                    child: Container(
                      height: size.height * 0.4,
                      color: yellow,
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: size.height * 0.65,
              child: Container(
                width: size.width,
                padding: const EdgeInsets.all(appPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'DELIVERY',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: white,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const Text(
                      'Lorem Ipsum is simply dummy \ntext of the printing and typesetting industry.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: appPadding / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: black, width: 2),
                        shape: BoxShape.circle,
                        color: yellow),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: appPadding / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: black, width: 2),
                        shape: BoxShape.circle,
                        color: yellow),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: appPadding / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: black, width: 2),
                        shape: BoxShape.circle,
                        color: white),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: appPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      // ignore: avoid_print
                      onPressed: () {
                        storeOnboardInfo();
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => HomeScreen()));
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: appPadding),
                    child: FloatingActionButton(
                      // ignore: avoid_print
                      onPressed: () {
                        storeOnboardInfo();
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => HomeScreen()));
                      },
                      backgroundColor: white,
                      child: const Icon(
                        Icons.done_rounded,
                        color: black,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
