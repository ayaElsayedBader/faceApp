import 'package:flutter/material.dart';
import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/string_app.dart';
import '../../../../core/resource/styles/val_app.dart';
import '../../../home_screen/view/widget/bottom_app_bar_home_page.dart';
import '../widget/item_add_friend.dart';

class AddFriend extends StatelessWidget {
  const AddFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 6,
        title: const BottomRowWidgetAppBarHomePage(),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        reverse: true,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                  top: ValApp.va20, right: ValApp.va10, left: ValApp.va10),
              child: Row(
                children: [
                  Icon(Icons.search, color: ColorApp.black),
                  Spacer(),
                  Text(
                    StringApp.friend,
                    style: TextStyle(
                        color: ColorApp.black,
                        fontSize: ValApp.va25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: ValApp.va20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: ValApp.va10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  container(text: StringApp.suggestions),
                  const SizedBox(
                    width: ValApp.va20,
                  ),
                  container(text: StringApp.friend),
                ],
              ),
            ),
            size10,
            const Divider(
              thickness: ValApp.va2,
            ),
            size10,
            const Padding(
              padding: EdgeInsets.only(
                left: ValApp.va20,
                right: ValApp.va20,
                bottom: ValApp.va10,
              ),
              child: Row(
                children: [
                  Text(
                    StringApp.viewAll,
                    style: TextStyle(
                        color: ColorApp.indigo, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    '123',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: ValApp.va20),
                  ),
                  Text(
                    StringApp.friendshipRequests,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: ValApp.va23,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const ItemAddFriend(),
          ],
        ),
      ),
    );
  }
}

container({required String text}) {
  return Container(
    padding: const EdgeInsets.all(ValApp.va7),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30), color: ColorApp.grey300),
    child: Text(text),
  );
}
