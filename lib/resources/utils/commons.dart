import 'package:flutter/material.dart';

showStar({required double star, double sizeStar = 14}) {
  List<Widget> starOn = <Widget>[];
  for (int i = 1; i <= star; i++) {
    starOn.add(Icon(Icons.star, size: sizeStar, color: Colors.yellow));
  }
  if (star < 5) {
    for (int i = 1; i <= (5 - star); i++) {
      starOn.add(Icon(Icons.star, size: sizeStar, color: Colors.grey.shade300));
    }
  }
  return Row(
    children: starOn,
  );
}
