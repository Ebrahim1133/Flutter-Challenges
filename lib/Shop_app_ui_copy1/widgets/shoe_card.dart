import 'package:flutter/material.dart';
import 'package:projects/Shop_app_ui_copy1/data/data.dart';
import 'package:projects/Shop_app_ui_copy1/widgets/custom_buy_button.dart';
import 'package:projects/Shop_app_ui_copy1/widgets/like_button.dart';


class ShoeCard extends StatelessWidget {
  final ShoeData? shoe;

  // ignore: use_key_in_widget_constructors
  const ShoeCard({ this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: shoe!.backgroundColor,
      ),
      height: 180,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                likeButton(),
                Center(
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    height: 120,
                    width: 140,
                    child: Hero(
                      tag: "${shoe!.id}",
                      child: Image.asset(
                        shoe!.image,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: shoe!.name,
                    style: Theme.of(context).textTheme.headline4,
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nby Nike',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
                Text(
                  shoe!.tagLine,
                  style: Theme.of(context).textTheme.caption,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // ignore: unnecessary_string_escapes
                    Text("\$\ ${shoe!.price}",
                        style: Theme.of(context).textTheme.headline4),
                    customBuyButtom()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
