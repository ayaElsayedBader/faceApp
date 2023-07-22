import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/string_app.dart';
import '../../../../core/resource/styles/val_app.dart';
import '../../../add_friend_screen/view/page/add_friend_page.dart';

class BottomRowWidgetAppBarHomePage extends StatelessWidget {
  const BottomRowWidgetAppBarHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: ValApp.va20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          iconBottomAppBarHomePage(icon: Icons.menu),
          Badge(
              backgroundColor: ColorApp.red4,
              label: const Text(StringApp.num3),
              child: iconBottomAppBarHomePage(
                  icon: Icons.notifications_none_outlined)),
          iconBottomAppBarHomePage(icon: Icons.margin),
          iconBottomAppBarHomePage(icon: Icons.tv),
          InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AddFriend()));
              },
              child: iconBottomAppBarHomePage(icon: Icons.people)),
          iconBottomAppBarHomePage(icon: Icons.home),
        ],
      ),
    );
  }
}

Widget iconBottomAppBarHomePage({required IconData icon}) {
  return Icon(
    icon,
    size: ValApp.va33,
    color: ColorApp.grey500,
  );
}
