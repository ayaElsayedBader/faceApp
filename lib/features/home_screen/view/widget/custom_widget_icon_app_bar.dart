import 'package:flutter/material.dart';

import '../../../../core/resource/styles/val_app.dart';

Widget customContainer({required IconData icon ,double size=25 , double radius=4}) {
  return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
        BoxShadow(spreadRadius: 1, blurRadius: radius, color: Colors.grey.shade300)
      ]),
      child: Icon(
        icon,
        size: size,
      ));
}
