import 'package:flutter/material.dart';
import 'package:shopdemo/resources/utils/app_styles.dart';

class titleHomeWidget extends StatelessWidget {
  String titleLeft;
  String titleRight;
  String link;

  titleHomeWidget(this.titleLeft, this.titleRight, this.link);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(titleLeft, style: AppStyles.titleHome),
          Text(titleRight, style: AppStyles.titleHomeMore)
        ],
      ),
    );
  }
}
