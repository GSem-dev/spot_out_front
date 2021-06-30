import 'package:flutter/material.dart';

import 'package:spot_out/screens/bottom_navigation/bottom_navigation_widget.dart';
import 'package:spot_out/common_widgets/rounded_button.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      text: 'Войти',
      borderRadius: 16.0,
      padding: const EdgeInsets.symmetric(
        vertical: 12.0,
        horizontal: 40.5,
      ),
      onTap: () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute<void>(
            builder: (_) => const BottomNavigationWidget(),
          ),
          (route) => false,
        );
      },
    );
  }
}
