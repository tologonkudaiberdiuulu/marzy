import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marzy/features/home/controller/home_controller.dart';
import 'package:marzy/features/home/page/custom_navigation_button.dart';
import 'package:marzy/shared/images/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marzy/shared/presentation/button_styles.dart';
import 'package:marzy/shared/presentation/colors.dart';
import 'package:marzy/shared/presentation/text_styles.dart';
import 'package:marzy/shared/widgets/custom_buttons.dart';

class HomePage extends GetView<HomeController> {
  static const route = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("ул. Карла Маркса 21"),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: CustomNavigationButton(
            image: AppImages.locationButton,
            width: 44.w,
            height: 44.w,
          ),
        ),
        actions: [
          CustomNavigationButton(
            image: AppImages.searchButton,
            width: 44.w,
            height: 44.w,
          ),
          SizedBox(width: 5.w),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CustomNavigationButton(
              image: AppImages.profileButton,
              width: 44.w,
              height: 44.w,
              onTap: controller.goToProfile,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Продукты'),
                    style: ButtonStyles.button1.copyWith(
                      minimumSize: MaterialStateProperty.all(Size(107.w, 33.h)),
                      elevation: MaterialStateProperty.all(0),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Лекарства'),
                    style: ButtonStyles.button1.copyWith(
                      minimumSize: MaterialStateProperty.all(Size(107.w, 33.h)),
                      foregroundColor:
                          MaterialStateProperty.all(AppColors.blackGrey),
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.fonGrey),
                      elevation: MaterialStateProperty.all(0),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Иное'),
                    style: ButtonStyles.button1.copyWith(
                      minimumSize: MaterialStateProperty.all(Size(107.w, 33.h)),
                      textStyle: MaterialStateProperty.all(AppTextStyles
                          .interMed14
                          .copyWith(color: AppColors.black)),
                      foregroundColor:
                          MaterialStateProperty.all(AppColors.blackGrey),
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.fonGrey),
                      elevation: MaterialStateProperty.all(0),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Container(
                height: 122.h,
                decoration: BoxDecoration(
                  color: AppColors.fon,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Действующий заказ: U223321',
                          style: AppTextStyles.interMed14
                              .copyWith(color: AppColors.black),
                        ),
                        CustomTextButton(
                          text: 'перейти',
                          onPressed: () {},
                        )
                      ],
                    ),
                    Text(
                      'Доставит к Артем П.',
                      style: AppTextStyles.interMed12,
                    ),
                    SizedBox(height: 10.h),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('+7 920 000 00 00'),
                      style: ButtonStyles.button1.copyWith(
                        minimumSize: MaterialStateProperty.all(
                            Size(double.infinity, 40)),
                      ),
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              SizedBox(height: 10.h),
              Container(
                height: 72.h,
                decoration: BoxDecoration(
                  color: AppColors.fon,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Созданный заказ: U223321',
                          style: AppTextStyles.interMed14
                              .copyWith(color: AppColors.black),
                        ),
                        CustomTextButton(
                          text: 'перейти',
                          onPressed: () {},
                        )
                      ],
                    ),
                    Text(
                      'Откликнулось: 3 курьера',
                      style: AppTextStyles.interMed12,
                    ),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
              SizedBox(height: 18.h),
              Text(
                'Быстрые действия',
                style: AppTextStyles.interReg16
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 14.h),
              Row(
                children: [
                  Container(
                    height: 130.h,
                    width: 107.w,
                    decoration: BoxDecoration(
                      color: AppColors.fon,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(width: 7.w),
                  Container(
                    height: 130.h,
                    width: 107.w,
                    decoration: BoxDecoration(
                      color: AppColors.fon,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              Text(
                'Каталог',
                style: AppTextStyles.interReg16
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 14.h),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: 10,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                  return Container(
                    // alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 18.w, bottom: 18.w),
                    height: 165.w,
                    width: 165.w,
                    child: Text("name"),
                    decoration: BoxDecoration(
                        color: AppColors.fon,
                        borderRadius: BorderRadius.circular(15)),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
