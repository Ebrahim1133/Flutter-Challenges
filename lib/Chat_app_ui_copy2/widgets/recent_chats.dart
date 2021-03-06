import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../models/message_model.dart';
import '../screens/screen.dart';

import '../app_theme.dart';

// ignore: use_key_in_widget_constructors
class RecentChats extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Text(
                'Recent Chats',
                style: MyTheme.heading2,
              ),
              const Spacer(),
              Icon(
                Icons.search,
                color: MyTheme.kPrimaryColor,
              )
            ],
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemCount: recentChats.length,
            itemBuilder: (context, int index) {
              final recentChat = recentChats[index];
              return Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(recentChat.avatar!),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              CupertinoPageRoute(builder: (context) {
                            return ChatRoom(
                              user: recentChat.sender!,
                            );
                          }));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              recentChat.sender!.name,
                              style: MyTheme.heading2.copyWith(
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              recentChat.text!,
                              style: MyTheme.bodyText1,
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: MyTheme.kUnreadChatBG,
                            child: Text(
                              recentChat.unreadCount.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            recentChat.time!,
                            style: MyTheme.bodyTextTime,
                          )
                        ],
                      ),
                    ],
                  ));
            })
      ],
    );
  }
}
