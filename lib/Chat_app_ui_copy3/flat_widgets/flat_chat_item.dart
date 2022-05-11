
import 'package:flutter/material.dart';
import 'package:projects/Chat_app_ui_copy3/flat_widgets/flat_profile_image.dart';

class FlatChatItem extends StatelessWidget {

  final Widget? profileImage;
  final String? name;
  final String? message;
  final Widget? counter;
  final Color ?nameColor;
  final Color? messageColor;
  final Color? backgroundColor;
  final bool ?multiLineMessage;
  final VoidCallback ?onPressed;

  // ignore: use_key_in_widget_constructors
  const FlatChatItem({
    this.profileImage,
    this.name,
    this.message,
    this.counter,
    this.nameColor,
    this.messageColor,
    this.backgroundColor,
    this.multiLineMessage,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Ink(
        color: backgroundColor ?? Theme.of(context).primaryColorLight,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: multiLineMessage == true ? CrossAxisAlignment.start : CrossAxisAlignment.center,
            children: [
              profileImage ?? const FlatProfileImage(),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 8.0,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 4.0,
                              top: multiLineMessage == true ? 8.0 : 0.0,
                            ),
                            child: Text(
                              name ?? "Name",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: nameColor ?? Theme.of(context).primaryColorDark,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 220.0,
                            child: Text(
                              message ?? "Hello World!, text message",
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              maxLines: multiLineMessage == true ? 100 : 1,
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: messageColor ?? Theme.of(context).primaryColorDark.withOpacity(0.5),
                              ),
                            ),
                          ),
                        ],
                      ),
                      counter ?? Container(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}