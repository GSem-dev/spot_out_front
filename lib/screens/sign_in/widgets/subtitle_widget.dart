import 'package:flutter/material.dart';

import 'package:spot_out/theme/app_colors.dart';
import 'package:spot_out/theme/app_text_styles.dart';

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Рады снова тебя видеть',
      style: AppTextStyles.description1.copyWith(
        color: AppColors.gray50,
      ),
    );
  }
}
