import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spot_out/theme/app_colors.dart';

class AppTextStyles {
  static const TextStyle header3 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    height: 1.33,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.lightGray,
  );

  static const TextStyle titleSmall = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 14.0,
    height: 1.17,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.lightGray,
  );

  static const TextStyle title1 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 24.0,
    height: 1.2,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.lightGray,
  );

  static const TextStyle title2 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 20.0,
    height: 1.3,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.lightGray,
  );

  static const TextStyle paragraph1 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 18.0,
    height: 1.2,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.lightGray,
  );

  static const TextStyle paragraph2 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    fontSize: 16.0,
    height: 1.4,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.black,
  );

  static const TextStyle description1 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 14.0,
    height: 1.2,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.lightGray,
  );

  static const TextStyle description2 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 12.0,
    height: 1.2,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.lightGray,
  );

  static const TextStyle description3 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 10.0,
    height: 1.2,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.black,
  );

  static const TextStyle emojiM = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 14.0,
    height: 1.0,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.lightGray,
  );

  static const TextStyle button1 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 16.0,
    height: 1.2,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.black,
  );

  static const TextStyle button2 = TextStyle(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontSize: 14.0,
    height: 1.0,
    fontFeatures: <FontFeature>[
      // pnum
      FontFeature.proportionalFigures(),
      // lnum
      FontFeature.liningFigures(),
    ],
    color: AppColors.black,
  );

  const AppTextStyles._();
}
