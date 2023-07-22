import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/string_app.dart';
import '../../../../core/resource/styles/val_app.dart';

class ReactWidget extends StatelessWidget {
  const ReactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: ValApp.va70, top: ValApp.va3, bottom: ValApp.va17),
      child: Row(
        children: const [
          Text(StringApp.h1),
          Spacer(),
          Text(StringApp.num657),
          Icon(
            Icons.thumb_up,
            color: ColorApp.blue300,
            size: ValApp.va15,
          ),
          Text(StringApp.fan)
        ],
      ),
    );
  }
}
// الحمد لله حمدا طيبا كثيؤا مبارك فيه