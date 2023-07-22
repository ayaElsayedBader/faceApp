import 'package:flutter/material.dart';

import '../../../../core/resource/styles/string_app.dart';
import '../../../../core/resource/styles/val_app.dart';

Widget getRowBodyClose() {
  return Row(
    children: [
      const Icon(Icons.close),
      const SizedBox(
        width: ValApp.va20,
      ),
      const Icon(Icons.more_horiz),
      const Spacer(),
      Column(
        children: [
          const Text(
            StringApp.blueNight,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          Row(
            children: const [
              Icon(
                Icons.public,
              ),
              Text(
                StringApp.likeYou,
                style: TextStyle(fontSize: ValApp.va12),
              )
            ],
          ),
        ],
      ),
      const CircleAvatar(
        radius: ValApp.va20,
        backgroundColor: Colors.blue,
      )
    ],
  );
}
