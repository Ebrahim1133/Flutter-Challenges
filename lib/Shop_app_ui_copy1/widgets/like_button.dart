import 'package:flutter/material.dart';

Widget likeButton() {
  return InkWell(
    borderRadius: BorderRadius.circular(12),
    onTap: () {},
    child: Container(
        width: 30,
        height: 30,
        decoration:  BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Icon(
          Icons.favorite,
          color: Colors.red,
          size: 15,
        )),
  );
}
