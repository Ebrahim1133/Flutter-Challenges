import 'package:flutter/material.dart';

import '../../k_padding.dart';
import '../../responsive.dart';

// ignore: use_key_in_widget_constructors
class TopBarDescription extends StatelessWidget {
  //The Top Bar over the description page
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding),
      child: Row(
        children: [
         /*  if (ResponsiveLayout.isIphone(context)) BackButton(),
          if (ResponsiveLayout.isMacbook(context))
            IconButton(
              icon: Icon(
                Icons.print_outlined,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () {},
            ), */
          const Spacer(),
          ConstrainedBox(
            constraints: const BoxConstraints.tightFor(
              width: 100,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(
                      vertical: kPadding,
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).accentColor)),
              child: Text(
                "Add to Cart",
                style: TextStyle(color: Colors.black.withOpacity(0.8)),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: kPadding),
          ConstrainedBox(
            constraints: BoxConstraints.tightFor(
              width: 100,
            ),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                      vertical: kPadding,
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor)),
              child: Text(
                "Buy Now",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
