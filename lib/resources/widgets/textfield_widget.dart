import 'package:flutter/material.dart';
import 'package:shopdemo/resources/utils/app_colors.dart';

class textFieldWidget extends StatelessWidget {
  final String? hintText;
  final bool? typePassword;
  final bool? hasIcon;
  final IconData? icon;
  final TextEditingController? textEditingController;

  const textFieldWidget(
      {Key? key,
      this.hintText,
      this.hasIcon,
      this.icon,
      this.typePassword,
      this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: typePassword == true ? true : false,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.greyN),
          prefixIcon: hasIcon == true
              ? Padding(
                  padding: const EdgeInsets.only(left: 15, right: 10),
                  child: Icon(
                    icon,
                    color: AppColors.greyN,
                    size: 28,
                  ),
                )
              : null,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: Colors.white)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: AppColors.blueN),
          )),
    );
  }
}
