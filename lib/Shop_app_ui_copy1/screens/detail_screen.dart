import 'package:flutter/material.dart';
import 'package:projects/Shop_app_ui_copy1/constants/constants.dart';
import 'package:projects/Shop_app_ui_copy1/data/data.dart';
import 'package:projects/Shop_app_ui_copy1/widgets/custom_icon_button.dart';
import 'package:projects/Shop_app_ui_copy1/widgets/like_button.dart';


class DetailScreen extends StatefulWidget {
  final ShoeData ?shoeData;
  final String ?tag;
  // ignore: use_key_in_widget_constructors
  const DetailScreen({this.shoeData, this.tag});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // ignore: prefer_final_fields
  List<String> _sizeTags = [
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44"
  ];
  int _selectedTag = 0;

  Widget _buildSizeTags(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTag = index;
        });
      },
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          color: _selectedTag == index ? AppColor.PRIMARY_COLOR : Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            _sizeTags[index],
            style: TextStyle(
              color: _selectedTag != index ? Colors.grey[400] : Colors.white,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: widget.shoeData!.backgroundColor,
                      ),
                      child: Hero(
                          tag: "${widget.shoeData!.id}",
                          child: Image.asset(widget.shoeData!.image)),
                    ),
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios_rounded),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: likeButton(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.shoeData!.name,
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(widget.shoeData!.tagLine,
                    style: Theme.of(context).textTheme.headline2),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Select Size",
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: 10,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _sizeTags.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          _buildSizeTags(index),
                          const SizedBox(width: 10),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Text("Description",
                    style: Theme.of(context).textTheme.headline5),
                const SizedBox(
                  height: 5,
                ),
                Text(widget.shoeData!.description,
                    style: Theme.of(context).textTheme.headline2),
                const SizedBox(
                  height: 20,
                ),
                Text("Reviews", style: Theme.of(context).textTheme.headline5),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white)),
                            child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/people1.jpg'),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white)),
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/people2.jpg'),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white)),
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/people3.jpg'),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 90,
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white)),
                              child: const CircleAvatar(
                                backgroundColor: Colors.black87,
                                child: Text("12+",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    customIconButtom(
                      backgroundColor: AppColor.PRIMARY_COLOR,
                      child: const Icon(
                        Icons.add_shopping_cart,
                        color: Colors.white,
                        size: 20,
                      ),
                      onTap: () {},
                      radius: BorderRadius.circular(25),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
