import 'package:flutter/material.dart';

import 'package:spot_out/screens/sign_in/widgets/email_text_field.dart';
import 'package:spot_out/screens/sign_in/widgets/password_text_field.dart';
import 'package:spot_out/screens/sign_in/widgets/sign_in_button.dart';
import 'package:spot_out/screens/sign_in/widgets/subtitle_widget.dart';
import 'package:spot_out/screens/sign_in/widgets/title_widget.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 47.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: const <Widget>[
                    SizedBox(height: 56.0),
                    TitleWidget(),
                    SizedBox(height: 16.0),
                    SubtitleWidget(),
                    SizedBox(height: 40.0),
                    EmailTextField(),
                    SizedBox(height: 16.0),
                    PasswordTextField(),
                  ],
                ),
                Column(
                  children: const <Widget>[
                    SignInButton(),
                    SizedBox(height: 50.0),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
