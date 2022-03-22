import 'package:flutter/material.dart';
import 'package:shopdemo/resources/utils/app_colors.dart';

class BigButtonWidget extends StatelessWidget {
  final String? text;
  final Color? backgroundColor;
  final Color? textColor;
  final VoidCallback? onPress;

  const BigButtonWidget(
      {Key? key, this.text, this.onPress, this.backgroundColor, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(text!),
      style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
              TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          padding: MaterialStateProperty.all(
              EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20)),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(textColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))))),
    );
  }
}
