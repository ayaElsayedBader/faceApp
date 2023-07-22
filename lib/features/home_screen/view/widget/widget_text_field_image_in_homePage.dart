import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/image_app.dart';
import '../../../../core/resource/styles/val_app.dart';

class RowImageTextCircle extends StatelessWidget {
  const RowImageTextCircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(
          Icons.image,
          color: Colors.green,
        ),
        Container(
          width: 200,
          height: 35,
          decoration: BoxDecoration(
              border: Border.all(color: ColorApp.grey300),
              borderRadius: BorderRadius.circular(ValApp.va50)),
          child: const Padding(
            padding: EdgeInsets.only(right: ValApp.va15),
            child: Text(
              ' بم تفكر؟',
              textAlign: TextAlign.right,
              style: TextStyle(
                  color: ColorApp.black,
                  fontWeight: FontWeight.w600,
                  fontSize: ValApp.va17),
            ),
          ),
        ),
        const CircleAvatar(
          backgroundImage: AssetImage(ImageApp.girl),
        )
      ],
    );
  }
}
