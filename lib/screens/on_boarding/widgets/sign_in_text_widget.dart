import 'package:flutter/material.dart';

import 'package:spot_out/screens/sign_in/sign_in_screen.dart';
import 'package:spot_out/theme/app_colors.dart';
import 'package:spot_out/theme/app_text_styles.dart';

class SignInTextWidget extends StatelessWidget {
  const SignInTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Уже есть аккаунт?',
          style: AppTextStyles.titleSmall.copyWith(
            color: AppColors.bgWhite,
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (_) => const SignInScreen(),
              ),
            );
          },
          child: Text(
            ' Войти',
            style: AppTextStyles.titleSmall.copyWith(
              color: AppColors.pinkMain,
            ),
          ),
        ),
      ],
    );
  }
}
