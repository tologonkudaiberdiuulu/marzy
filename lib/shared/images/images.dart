import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImages {
  static const splashBg = 'assets/images/splash_bg.png';
  static const backButton = 'assets/icons/back_button.svg';
  static const locationButton = 'assets/images/location.svg';
  static const arrowRight = 'assets/images/arrow_right.svg';
  static const profileButton = 'assets/images/profile.svg';
  static const searchButton = 'assets/images/search.svg';
}

class CustomImage extends StatelessWidget {
  final Color? color;
  final double? width;
  final double? height;
  final String image;
  const CustomImage({
    Key? key,
    this.color,
    this.width,
    this.height,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      image,
      color: color,
      width: width,
      height: height,
    );
  }
}
