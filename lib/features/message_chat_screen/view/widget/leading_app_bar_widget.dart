import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/image_app.dart';
import '../../../../core/resource/styles/val_app.dart';

class LeadingAppBarWidget extends StatelessWidget {
  const LeadingAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.arrow_back,
          color: ColorApp.indigo,
        ),
        CircleAvatar(
          radius: ValApp.va16,
          backgroundImage: AssetImage(
            ImageApp.splash,
          ),
        ),
      ],
    );
  }
}
