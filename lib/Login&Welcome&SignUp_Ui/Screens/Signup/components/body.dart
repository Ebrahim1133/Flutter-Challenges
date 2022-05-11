import 'package:flutter/material.dart';

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/svg.dart';
import 'package:projects/Login&Welcome&SignUp_Ui/Screens/Login/login_screen.dart';
import 'package:projects/Login&Welcome&SignUp_Ui/Screens/Signup/components/background.dart';
import 'package:projects/Login&Welcome&SignUp_Ui/Screens/Signup/components/or_divider.dart';
import 'package:projects/Login&Welcome&SignUp_Ui/Screens/Signup/components/social_icon.dart';
import 'package:projects/Login&Welcome&SignUp_Ui/components/already_have_an_account_acheck.dart';
import 'package:projects/Login&Welcome&SignUp_Ui/components/rounded_button.dart';
import 'package:projects/Login&Welcome&SignUp_Ui/components/rounded_input_field.dart';
import 'package:projects/Login&Welcome&SignUp_Ui/components/rounded_password_field.dart';



// ignore: use_key_in_widget_constructors
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/signup.svg",
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
