import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/string_app.dart';
import '../../../../core/resource/styles/val_app.dart';
import '../../data/model.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Icon(
              Icons.star_rate,
              color: ColorApp.indigo,
              size: ValApp.va15,
            ),
            Text(
              StringApp.topFan,
              style:
                  TextStyle(fontWeight: FontWeight.w300, color: ColorApp.black),
            ),
          ],
        ),
        const SizedBox(
          height: ValApp.va5,
        ),
        const Text(
          ' Aya Elsayed',
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(
          height: ValApp.va5,
        ),

        (const Text(StringApp.moments))


      ],
    );
  }
}
