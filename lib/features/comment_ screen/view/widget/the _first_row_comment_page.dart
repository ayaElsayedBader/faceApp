 import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/string_app.dart';
import '../../../../core/resource/styles/val_app.dart';

class FirstRowCommentPage extends StatelessWidget {
  const FirstRowCommentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(StringApp.face),
        Icon(Icons.thumb_up, size: ValApp.va15, color: ColorApp.blue300),
        Text(StringApp.num89k),
        Icon(
          Icons.arrow_forward_ios,
          size: ValApp.va17,
        ),
        Spacer(),
        Icon(Icons.thumb_up, size: ValApp.va17, color: ColorApp.grey),
        SizedBox(
          height: ValApp.va70,
        ),
      ],
    );
  }
}
