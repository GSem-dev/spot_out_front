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
      'Тут ты найдешь кучу интересных меропритияй, а также сможешь создать свои.',
      textAlign: TextAlign.center,
      style: AppTextStyles.paragraph2.copyWith(color: AppColors.gray20),
    );
  }
}
