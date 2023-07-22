import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/string_app.dart';
import '../../../../core/resource/styles/val_app.dart';
import '../../../home_screen/view/widget/custom_widget_icon_app_bar.dart';

class OverWidgetChat extends StatelessWidget {
  const OverWidgetChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Badge(
                backgroundColor: Colors.red,
                label: const Text(StringApp.num3),
                child: customContainer(icon: Icons.menu)),
            const Text(
              '   chats ',
              style: TextStyle(
                  fontSize: ValApp.va23,
                  color: ColorApp.black,
                  fontWeight: FontWeight.w900),
            ),
            const Spacer(),
            customContainer(icon: Icons.camera_alt, size: ValApp.va20),
            const SizedBox(
              width: ValApp.va10,
            ),
            customContainer(icon: Icons.create, size: ValApp.va20),
          ],
        ),
        const SizedBox(
          height: ValApp.va15,
        ),
        Container(
          decoration: BoxDecoration(
              color: ColorApp.indigo50,
              borderRadius: BorderRadius.circular(ValApp.va50)),
          child: const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                ),
                border: InputBorder.none,
                hintText: StringApp.search),
          ),
        )
      ],
    );
  }
}
