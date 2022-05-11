// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:projects/Login&Welcome&SignUp_Ui/components/text_field_container.dart';
import 'package:projects/Login&Welcome&SignUp_Ui/constants.dart';



class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const RoundedPasswordField({

    this.onChanged,
  }) ;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: kPrimaryColor,
      
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
