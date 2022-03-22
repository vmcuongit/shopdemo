import 'package:flutter/material.dart';

class ButtonLoginSocialWidget extends StatelessWidget {
  final String? label;
  final Image? image;
  final Color? backgroundColor;
  final VoidCallback? onPress;

  const ButtonLoginSocialWidget(
      {Key? key, this.label, this.image, this.onPress, this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Row(
        children: [
          Expanded(child: image!),
          Expanded(
            child: Text(
              'Login with Google',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF9098B1)),
              textAlign: TextAlign.center,
            ),
            flex: 7,
          )
        ],
      ),
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15)),
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))))),
    );
  }
}
