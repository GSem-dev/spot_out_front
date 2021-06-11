import 'package:flutter/material.dart';

import 'package:spot_out/screens/common_widgets/rounded_button.dart';
import 'package:spot_out/screens/sign_up/sign_up_screen.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      text: 'Зарегестрироваться',
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute<void>(
            builder: (_) => const SignUpScreen(),
          ),
        );
      },
    );
  }
}
