import 'package:flutter/cupertino.dart';
import 'package:shopdemo/resources/utils/app_colors.dart';

class AppStyles {
  static const TextStyle h1 = TextStyle(fontSize: 20);
  static const TextStyle numCatelogy =
      TextStyle(color: AppColors.clNumCatelogy, fontSize: 12);
  static const TextStyle cssItemMenu =
      TextStyle(color: AppColors.colorMenu, fontSize: 14);

  static const TextStyle nameBotNav = TextStyle(
      color: AppColors.greyN, fontSize: 11, fontWeight: FontWeight.w700);
  static const TextStyle nameBotNavAc = TextStyle(
      color: AppColors.blueN, fontSize: 11, fontWeight: FontWeight.w700);

  static const TextStyle titleHome = TextStyle(
      color: Color(0xFF223263), fontSize: 16, fontWeight: FontWeight.bold);

  static const TextStyle titleHomeMore = TextStyle(
      color: AppColors.blue1, fontSize: 16, fontWeight: FontWeight.bold);

  static const TextStyle nameCate =
      TextStyle(color: Color(0xFF9098B1), fontSize: 15);

  static const TextStyle nameProduct = TextStyle(
      color: Color(0xFF223263), fontSize: 15, fontWeight: FontWeight.w700);

  static const TextStyle priceProduct = TextStyle(
      color: Color(0xFF40BFFF), fontSize: 15, fontWeight: FontWeight.w700);

  static const TextStyle priceoldProduct = TextStyle(
      color: Color(0xFF9098B1),
      fontSize: 14,
      decoration: TextDecoration.lineThrough);

  static const TextStyle saleoffProduct = TextStyle(
      color: Color(0xFFFB7181), fontSize: 14, fontWeight: FontWeight.w700);
}
