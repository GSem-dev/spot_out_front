import 'package:flutter/material.dart';

import 'package:spot_out/theme/app_colors.dart';
import 'package:spot_out/theme/app_text_styles.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Привет!',
      style: AppTextStyles.title1.copyWith(
        color: AppColors.black,
      ),
    );
  }
}
