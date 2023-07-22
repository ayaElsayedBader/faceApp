import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/image_app.dart';
import '../../../../core/resource/styles/string_app.dart';
import '../../../../core/resource/styles/val_app.dart';
import '../../../chat_screen/view/page_chat.dart';
import 'custom_widget_icon_app_bar.dart';

class OverAppBarHomePage extends StatelessWidget {
  const OverAppBarHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: ValApp.va20,
        right: ValApp.va5,
        left: ValApp.va5,
      ),
      child: Row(
        children: [
          Badge(
            backgroundColor: Colors.lightBlue,
            label: const Text(StringApp.num3),
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const ChatPage()));
              },

              child: Image.network(
                ImageApp.messanger,
                height: ValApp.va40,
                width: ValApp.va80,
              ),
            ),
          ),
          customContainer(icon: Icons.search_rounded),
          const SizedBox(width: ValApp.va15),
          customContainer(icon: Icons.add),
          const Spacer(),
          const Text(
            StringApp.facebook,
            style: TextStyle(
                color: ColorApp.blue6,
                fontWeight: FontWeight.w900,
                fontSize: ValApp.va27),
          )
        ],
      ),
    );
  }
}
