import 'package:flutter/material.dart';
import 'package:marzy/shared/presentation/text_styles.dart';

import 'colors.dart';

class ButtonStyles {
  static var button1 = ButtonStyle(
    minimumSize: MaterialStateProperty.all(Size(150, 40)),
    textStyle: MaterialStateProperty.all(AppTextStyles.interMed14),
    foregroundColor: MaterialStateProperty.all(AppColors.white),
    backgroundColor: MaterialStateProperty.all(AppColors.accent),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
    ),
  );

  static var selectedButtonStyle = ButtonStyle(
    padding: MaterialStateProperty.all(EdgeInsets.only(left: 20, right: 20)),
    minimumSize: MaterialStateProperty.all(Size(150, 50)),
    textStyle: MaterialStateProperty.all(
        AppTextStyles.interMed14.copyWith(color: AppColors.black)),
    foregroundColor: MaterialStateProperty.all(AppColors.white),
    backgroundColor: MaterialStateProperty.all(AppColors.accent),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
    ),
  );
}
