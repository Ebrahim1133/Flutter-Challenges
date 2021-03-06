import 'package:flutter/material.dart';


import '../k_padding.dart';
import 'item_description/top_bar_description.dart';

// ignore: use_key_in_widget_constructors
class ECommerceItemDescription extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SafeArea(
          child: Column(
            children: [
              TopBarDescription(),
              // ignore: prefer_const_constructors
              Divider(thickness: 1),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(kPadding),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        maxRadius: 24,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/images/switch_logo.png"),
                      ),
                      const SizedBox(width: kPadding),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text.rich(
                                        TextSpan(
                                          text: "Sellar  ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                          children: [
                                            TextSpan(
                                                text: "Platinum Member",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                        color: Colors.black
                                                            .withOpacity(0.5))),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Nintendo Switch",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1!
                                            .copyWith(fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(width: kPadding / 2),
                                const Text("\$ 298", style: TextStyle(fontSize: 20)),
                              ],
                            ),
                            const SizedBox(height: kPadding),
                            LayoutBuilder(
                              builder: (context, constraints) => SizedBox(
                                width: constraints.maxWidth > 840
                                    ? 800
                                    : constraints.maxWidth,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: List.generate(
                                            3,
                                            (index) => Container(
                                              height: 100,
                                              width: 100,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                child: Image.asset(
                                                  "assets/images/switch_$index.jpg",
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: kPadding * 3,
                                        ),
                                        if (constraints.maxWidth > 300)
                                          // ignore: sized_box_for_whitespace
                                          Container(
                                            width: constraints.maxWidth > 840
                                                ? 600
                                                : constraints.maxWidth - 200,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              child: Image.asset(
                                                "assets/images/switch_box.jpg",
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                    const Divider(thickness: 1),
                                    const SizedBox(height: kPadding / 2),
                                    Text(
                                      "Three modes in one \n \nNintendo Switch is designed to fit your life, transforming from home console to portable system in a snap. \n\nDock your Nintendo Switch to enjoy HD gaming on your TV. \n\nFlip the stand to share the screen, then share the fun with a multiplayer game.\n\nPick it up and play with the Joy???Con??? controllers attached.",
                                      style: TextStyle(
                                        color: Colors.black.withOpacity(0.9),
                                      ),
                                    ),
                                    const SizedBox(height: kPadding),
                                    Row(
                                      children: [
                                        const Spacer(),
                                        // ignore: prefer_const_constructors
                                        Text("Reviews (33) ",
                                            style: TextStyle(fontSize: 15)),
                                        Icon(Icons.star_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.star_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.star_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.star_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                        Icon(Icons.star_outline_rounded,
                                            color:
                                                Theme.of(context).primaryColor),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
