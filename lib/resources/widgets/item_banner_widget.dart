import 'package:flutter/material.dart';

class ItemBannerWidget extends StatelessWidget {
  final String urlImage;
  String linkImage;

  ItemBannerWidget({required this.urlImage, this.linkImage = ''});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(linkImage);
      },
      child: Container(
          child: Image.asset(urlImage),
          margin: EdgeInsets.only(left: 5, right: 5)),
    );
  }
}
