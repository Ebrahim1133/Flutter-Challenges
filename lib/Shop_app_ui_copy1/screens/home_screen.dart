import 'package:flutter/material.dart';
import 'package:projects/Shop_app_ui_copy1/constants/constants.dart';
import 'package:projects/Shop_app_ui_copy1/data/data.dart';
import 'package:projects/Shop_app_ui_copy1/screens/detail_screen.dart';
import 'package:projects/Shop_app_ui_copy1/widgets/custom_icon_button.dart';
import 'package:projects/Shop_app_ui_copy1/widgets/shoe_card.dart';


// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // ignore: prefer_final_fields
  List<String> _tags = ["All", "Shoes", "Bags", "Clothing", "Cap"];
  int _selectedTag = 0;

  Widget _buildTags(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTag = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: _selectedTag == index ? AppColor.PRIMARY_COLOR : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          _tags[index],
          style: TextStyle(
            color: _selectedTag != index ? Colors.grey[400] : Colors.white,
            fontFamily: 'Poppins',
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
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nike Collections",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  "The Best of Nike, all in one place.",
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            labelText: "Search",
                            contentPadding: EdgeInsets.zero,
                            filled: true,
                            fillColor: AppColor.SECONDARY_COLOR,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    customIconButtom(
                      backgroundColor: AppColor.SECONDARY_COLOR,
                      child: Image.asset('assets/icons/filter.png'),
                      onTap: () {},
                      radius: BorderRadius.circular(12),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _tags
                      .asMap()
                      .entries
                      .map((MapEntry map) => _buildTags(map.key))
                      .toList(),
                ),
                const SizedBox(height: 25),
                _shoeListView()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _shoeListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: shoesData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        shoeData: shoesData[index],
                      ),
                    ),
                  );
                },
                child: ShoeCard(
                  shoe: shoesData[index],
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          );
        });
  }
}
