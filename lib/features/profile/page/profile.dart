import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marzy/features/profile/controller/profile_controller.dart';
import 'package:marzy/features/profile/page/profile_item.dart';
import 'package:marzy/shared/enums/AppEnums.dart';
import 'package:marzy/shared/localization/strings_ru.dart';
import 'package:marzy/shared/presentation/button_styles.dart';
import 'package:marzy/shared/presentation/colors.dart';
import 'package:marzy/shared/presentation/text_styles.dart';
import 'package:marzy/shared/widgets/custom_buttons.dart';
import 'package:marzy/shared/widgets/custom_text_fiedl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marzy/shared/widgets/loaders.dart';

class ProfilePage extends GetView<ProfileController> {
  static const route = '/profile_home';
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.profile),
        automaticallyImplyLeading: false,
        leading: CustomBackButton(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100),
              ),
              height: 100.h,
              width: 100.w,
            ),
            SizedBox(height: 20.h),
            Text(
              "Никита Кириченко",
              style: AppTextStyles.interSemiBold20,
            ),
            SizedBox(height: 20.h),
            ProfileItem(
              text: "Avs@gmail.com",
              hint: "Почта",
              isClickable: true,
              onClick: () {
                controller.editEmail();
              },
            ),
            SizedBox(height: 20.h),
            ProfileItem(
              text: "+7 920 444 44 44",
              hint: "Телефон",
              isClickable: true,
              onClick: () {
                controller.editPhoneNumber();
              },
            ),
            SizedBox(height: 20.h),
            ProfileItem(
              text: "4.73",
              hint: "Рейтинг",
              onClick: () {
                print("Tapped profile item Рейтинг");
              },
            ),
            Spacer(),
            ElevatedButton(
              style: ButtonStyles.selectedButtonStyle,
              onPressed: null,
              child: Container(
                // mainAxisAlignment: MainAxisAlignment.start,
                alignment: Alignment.centerLeft,
                child: Text(
                  AppStrings.profileDeliverGuy,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            ElevatedButton(
              style: ButtonStyles.selectedButtonStyle.copyWith(
                foregroundColor: MaterialStateProperty.all(AppColors.black),
                backgroundColor: MaterialStateProperty.all(AppColors.fon),
              ),
              onPressed: null,
              child: Container(
                child: Text(AppStrings.support),
                alignment: Alignment.centerLeft,
              ),
            ),
            SizedBox(height: 10.h),
            ElevatedButton(
              style: ButtonStyles.selectedButtonStyle.copyWith(
                foregroundColor: MaterialStateProperty.all(AppColors.black),
                backgroundColor: MaterialStateProperty.all(AppColors.fon),
              ),
              onPressed: null,
              child: Container(
                child: Text(AccountEditingType.email.title),
                alignment: Alignment.centerLeft,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
