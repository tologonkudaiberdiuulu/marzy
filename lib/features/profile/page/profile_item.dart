import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marzy/shared/images/images.dart';
import 'package:marzy/shared/localization/strings_ru.dart';
import 'package:marzy/shared/presentation/colors.dart';
import 'package:marzy/shared/presentation/text_styles.dart';

class ProfileItem extends StatelessWidget {
  final String text;
  final String hint;
  final bool isClickable;
  final VoidCallback? onClick;

  onTapFunction() {}

  const ProfileItem({
    Key? key,
    required this.text,
    required this.hint,
    this.isClickable = false,
    this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hint,
            style:
                AppTextStyles.interMed12.copyWith(color: AppColors.blackGrey),
          ),
          if (isClickable)
            GestureDetector(
              onTap: onClick,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: AppTextStyles.interMed14
                        .copyWith(color: AppColors.black),
                  ),
                  CustomImage(
                    image: AppImages.arrowRight,
                    color: AppColors.black,
                    width: 13,
                    height: 13,
                  ),
                ],
              ),
            )
          else
            Text(
              text,
              style: AppTextStyles.interMed14.copyWith(color: AppColors.black),
            ),
        ],
      ),
    );
  }
}
