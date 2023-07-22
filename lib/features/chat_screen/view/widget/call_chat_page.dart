import 'package:flutter/material.dart';

import '../../../../core/resource/list_face_app.dart';
import '../../../../core/resource/styles/list_app.dart';
import '../../../../core/resource/styles/val_app.dart';
import '../../../message_chat_screen/view/page/massage_page.dart';

class CallChatPage extends StatelessWidget {
  const CallChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 520,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 25.0),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: names.length,
        itemBuilder: (context, index) {
          return InkWell( onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>MessagePage()));
          },
            child: Row(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: ValApp.va10, bottom: ValApp.va10),
                      child: CircleAvatar(
                        radius: ValApp.va28,
                        backgroundImage: AssetImage(imageA[index]),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(namesFace[index]),
                    Row(
                      children: [
                        Text(
                            ' لم يتم الرد عليها.${namesFace[index]}ردتك مكالمه من')
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
