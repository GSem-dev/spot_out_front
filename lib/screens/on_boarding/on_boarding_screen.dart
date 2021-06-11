import 'package:flutter/material.dart';

import 'package:spot_out/screens/on_boarding/widgets/logo_widget.dart';
import 'package:spot_out/screens/on_boarding/widgets/sign_in_text_widget.dart';
import 'package:spot_out/screens/on_boarding/widgets/sign_up_button.dart';
import 'package:spot_out/screens/on_boarding/widgets/subtitle_widget.dart';
import 'package:spot_out/screens/on_boarding/widgets/title_widget.dart';
import 'package:spot_out/theme/app_colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayDark,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                LogoWidget(),
                SizedBox(height: 32.0),
                TitleWidget(),
                SizedBox(height: 24.0),
                SubtitleWidget(),
                SizedBox(height: 56.0),
                SignUpButton(),
                SizedBox(height: 24.0),
                SignInTextWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
