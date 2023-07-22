import 'package:face_app/features/chat_screen/view/widget/active_people_chat_page.dart';
import 'package:face_app/features/chat_screen/view/widget/call_chat_page.dart';
import 'package:face_app/features/chat_screen/view/widget/over_widget_chat.dart';
import 'package:flutter/material.dart';

import '../../../core/resource/styles/val_app.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

//Todo اللهم كن معي وكن لي واجعلني بك اقوي واغني
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: Column(
          children: const [
            Padding(
                padding: EdgeInsets.only(
                    top: ValApp.va31,
                    left: ValApp.va15,
                    right: ValApp.va15,
                    bottom: ValApp.va5),
                child: OverWidgetChat()),
            ActivePeople(),
            SizedBox(
              height: ValApp.va5,
            ),
            CallChatPage()
          ],
        ),
      ),
    );
  }
}

//Todo للهم كن معي وكن لي واجعلني بك أقوي وأغني
