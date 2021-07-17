import 'package:flutter/material.dart';
import 'package:marzy/shared/presentation/colors.dart';
import 'package:marzy/shared/presentation/text_styles.dart';

class CounterWidget extends StatelessWidget {
  final String title;
  const CounterWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(right: 16),
      child: Container(
        height: 28,
        width: 28,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.fonGrey,
          shape: BoxShape.circle,
        ),
        child: Text(
          title,
          style: AppTextStyles.interSemiBold10,
        ),
      ),
    );
  }
}
