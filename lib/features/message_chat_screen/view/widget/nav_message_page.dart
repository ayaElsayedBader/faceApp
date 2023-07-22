import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/val_app.dart';

class BottomNavMessagePage extends StatelessWidget {
  const BottomNavMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ValApp.va10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.highlight_alt_sharp,
            color: ColorApp.purpleA400,
          ),
          const Icon(
            Icons.camera_alt,
            color: ColorApp.purpleA400,
          ),
          const Icon(
            Icons.image,
            color: ColorApp.purpleA400,
          ),
          const Icon(
            Icons.mic,
            color: ColorApp.purpleA400,
          ),
          Container(
              height: ValApp.va40,
              width: ValApp.va140,
              padding: const EdgeInsets.all(ValApp.va10),
              decoration: BoxDecoration(
                  color: ColorApp.indigo50,
                  borderRadius: BorderRadius.circular(ValApp.va50)),
              child: const TextField(
                decoration: InputDecoration(
                border: InputBorder.none,
                  prefixIcon: Row(
                    children: [Text('Aa'), Spacer(), Text('😃')],
                  ),
                ),
              )),
          const Icon(
            Icons.thumb_up,
            color: ColorApp.purpleA400,
          )
        ],
      ),
    );
  }
}
