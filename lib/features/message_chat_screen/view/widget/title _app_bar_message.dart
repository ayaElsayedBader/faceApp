import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/image_app.dart';
import '../../../../core/resource/styles/val_app.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(
              'aya elsayed',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              ' active now ',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
        Icon(
          Icons.phone,
          color: ColorApp.indigo,
        ),
        Icon(
          Icons.video_call_sharp,
          color: ColorApp.indigo,
        ),
        CircleAvatar(
            radius: 13, backgroundColor: ColorApp.indigo, child: Text(' !'))
      ],
    );
  }
}
