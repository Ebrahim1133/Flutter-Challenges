import 'package:flutter/material.dart';
import 'package:projects/Login&Welcome&SignUp_Ui/components/text_field_container.dart';
import 'package:projects/Login&Welcome&SignUp_Ui/constants.dart';



class RoundedInputField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final ValueChanged<String>? onChanged;
  // ignore: use_key_in_widget_constructors
  const RoundedInputField({

    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
