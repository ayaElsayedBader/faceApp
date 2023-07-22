import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/string_app.dart';
import '../../../../core/resource/styles/val_app.dart';

class CustomTextFieldPutComment extends StatelessWidget {
  const CustomTextFieldPutComment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: ValApp.va10),
      child: Container(
          height: ValApp.va35,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorApp.indigo50,
            borderRadius: BorderRadius.circular(ValApp.va20),
          ),
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: StringApp.writeComment),
          )),
    );
  }
}
