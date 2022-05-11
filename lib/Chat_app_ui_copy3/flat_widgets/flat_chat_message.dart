import 'package:flutter/material.dart';

enum MessageType { sent, received }

class FlatChatMessage extends StatelessWidget {
  final String? message;
  final MessageType? messageType;
  final Color? backgroundColor;
  final Color? textColor;
  final String? time;
  final bool? showTime;
  final double? maxWidth;
  final double? minWidth;

  // ignore: use_key_in_widget_constructors
  const FlatChatMessage(
      {this.message,
      this.messageType,
      this.backgroundColor,
      this.textColor,
      this.time,
      this.showTime,
      this.minWidth,
      this.maxWidth});

  CrossAxisAlignment messageAlignment() {
    if (messageType == null || messageType == MessageType.received) {
      return CrossAxisAlignment.start;
    } else {
      return CrossAxisAlignment.end;
    }
  }

  double topLeftRadius() {
    if (messageType == null || messageType == MessageType.received) {
      return 0.0;
    } else {
      return 12.0;
    }
  }

  double topRightRadius() {
    if (messageType == null || messageType == MessageType.received) {
      return 12.0;
    } else {
      return 0.0;
    }
  }

  Color messageBgColor(BuildContext context) {
    if (messageType == null || messageType == MessageType.received) {
      return Theme.of(context).primaryColor;
    } else {
      return Theme.of(context).primaryColorDark.withOpacity(0.1);
    }
  }

  Color messageTextColor(BuildContext context) {
    if (messageType == null || messageType == MessageType.received) {
      return Colors.white;
    } else {
      return Theme.of(context).primaryColorDark;
    }
  }

  Text messageTime() {
    if (showTime != null && showTime == true) {
      return Text(
        time ?? "Time",
        style: const TextStyle(
          fontSize: 12.0,
          color: Color(0xFF666666),
        ),
      );
    } else {
      // ignore: prefer_typing_uninitialized_variables, avoid_init_to_null
      var nothing = null;
      return nothing;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 24.0,
      ),
      child: Column(
        crossAxisAlignment: messageAlignment(),
        children: [
          Container(
            constraints: BoxConstraints(
                minWidth: minWidth ?? 100.0, maxWidth: maxWidth ?? 250.0),
            decoration: BoxDecoration(
              color: backgroundColor ?? messageBgColor(context),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(topLeftRadius()),
                topRight: Radius.circular(topRightRadius()),
                bottomLeft: const Radius.circular(12.0),
                bottomRight: const Radius.circular(12.0),
              ),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 16.0,
            ),
            child: Text(
              message ?? "Message here...",
              style: TextStyle(
                color: textColor ?? messageTextColor(context),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 4.0,
              horizontal: 12.0,
            ),
            child: messageTime(),
          ),
        ],
      ),
    );
  }
}
