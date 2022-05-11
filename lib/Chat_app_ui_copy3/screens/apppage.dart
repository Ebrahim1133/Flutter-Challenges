
import 'package:flutter/material.dart';
import 'package:projects/Chat_app_ui_copy3/flat_widgets/flat_add_story_btn.dart';
import 'package:projects/Chat_app_ui_copy3/flat_widgets/flat_chat_item.dart';
import 'package:projects/Chat_app_ui_copy3/flat_widgets/flat_counter.dart';
import 'package:projects/Chat_app_ui_copy3/flat_widgets/flat_page_header.dart';
import 'package:projects/Chat_app_ui_copy3/flat_widgets/flat_profile_image.dart';
import 'package:projects/Chat_app_ui_copy3/flat_widgets/flat_section_header.dart';

import 'chatpage.dart';

// ignore: use_key_in_widget_constructors
class AppPage extends StatefulWidget {
  static const String id = "AppPage";

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Theme.of(context).primaryColorLight,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const FlatPageHeader(
              title: "Flat Chat",
            ),
            const FlatSectionHeader(
              title: "Moments",
            ),
            Container(
              height: 108.0,
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16.0),
                    child: FlatAddStoryBtn(
                      onPressed: () {
                        // ignore: avoid_print
                        print("Button Pressed");
                      },
                    ),
                  ),
                  const FlatProfileImage(
                    outlineIndicator: true,
                    onlineIndicator: true,
                    imageUrl: 'https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  ),
                  FlatProfileImage(
                    outlineIndicator: true,
                    onlineIndicator: false,
                    outlineColor: const Color(0xFF262833).withOpacity(0.3),
                    imageUrl: 'https://images.pexels.com/photos/4618392/pexels-photo-4618392.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  ),
                  FlatProfileImage(
                    outlineIndicator: true,
                    onlineIndicator: false,
                    outlineColor: const Color(0xFF262833).withOpacity(0.3),
                    imageUrl: 'https://images.pexels.com/photos/1261731/pexels-photo-1261731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  ),
                  const FlatProfileImage(
                    outlineIndicator: true,
                    onlineIndicator: false,
                    imageUrl: 'https://images.pexels.com/photos/3699259/pexels-photo-3699259.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  ),
                  FlatProfileImage(
                    outlineIndicator: true,
                    onlineIndicator: false,
                    outlineColor: const Color(0xFF262833).withOpacity(0.3),
                    imageUrl: 'https://images.pexels.com/photos/3078831/pexels-photo-3078831.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  )
                ],
              ),
            ),
            const FlatSectionHeader(
              title: "Marked Important",
            ),
            FlatChatItem(
              profileImage: const FlatProfileImage(
                onlineIndicator: true,
                imageUrl: 'https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
              ),
              name: "Alix Cage",
              message: "Something new here, wasup chan",
              multiLineMessage: true,
              onPressed: () {
                Navigator.pushNamed(context, ChatPage.id);
              },
            ),
            const FlatSectionHeader(
              title: "Messages",
            ),
            FlatChatItem(
              profileImage: const FlatProfileImage(
                imageUrl: 'https://images.pexels.com/photos/3078831/pexels-photo-3078831.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                outlineIndicator: false,
                onlineIndicator: true,
              ),
              name: "Akshaye",
              message: "Hey wasup bro, where have you been for so long? I'll call you in a few days to check on you if are working on the project assigned by yourself.",
              counter: const FlatCounter(
                text: "3",
              ),
              multiLineMessage: true,
              onPressed: () {
                // ignore: avoid_print
                print("Clicked on Chat Item");
              },
            ),
            const FlatChatItem(),
            const FlatChatItem(),
            const FlatChatItem(),
            const FlatChatItem()
          ],
        ),
      ),
    );
  }
}