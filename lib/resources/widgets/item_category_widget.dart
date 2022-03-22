import 'package:flutter/material.dart';
import 'package:shopdemo/resources/utils/app_styles.dart';

class itemCategoryWidget extends StatelessWidget {
  String name;
  String urlImage;
  String link;

  itemCategoryWidget(this.name, this.urlImage, this.link);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Center(
                child: Image.asset(
              urlImage,
              height: 25,
              fit: BoxFit.cover,
            )),
          ),
          Text(
            name,
            style: AppStyles.nameCate,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
