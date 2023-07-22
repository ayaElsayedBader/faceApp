import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/image_app.dart';
import '../../../../core/resource/styles/val_app.dart';
import '../../model/model_message/model_message.dart';

class SuccessMessage extends StatelessWidget {
  final List<ModelMessage> message;

  const SuccessMessage({required this.message, Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: message.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: ValApp.va15,
                    backgroundImage: AssetImage(ImageApp.splash),
                  ),
                  const SizedBox(
                    width: ValApp.va8,
                  ),
                  containerWidget(
                      color: ColorApp.blue300,
                      text: message[index].body,
                      size: ValApp.va270),
                ],
              ),
              const SizedBox(
                height: ValApp.va10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: ValApp.va20),
                child: Row(
                  children: [
                    const SizedBox(
                      width: ValApp.va8,
                    ),
                    Container(),
                    const Spacer(),
                    containerWidget(
                      color: ColorApp.indigo,
                      text: message[index].title,
                      size: ValApp.va180,
                    ),
                    const CircleAvatar(
                      radius: ValApp.va15,
                      backgroundImage: AssetImage(ImageApp.girl),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            height: ValApp.va20,
          );
        },
      ),
    );
  }
}

// Todo   حسبنا الله سيوتنا الله من فضله انا الي ربنا راغبوان
Widget containerWidget({
  required Color color,
  required String text,
  required double size,
}) {
  return Container(
    width: ValApp.va270,
    height: size,
    padding: const EdgeInsets.all(ValApp.va10),
    decoration: BoxDecoration(
        color: color, borderRadius: BorderRadius.circular(ValApp.va15)),
    child: Padding(
      padding: const EdgeInsets.only(top: ValApp.va5),
      child: Text(text,
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontSize: ValApp.va22,
            color: Colors.white,
          )),
    ),
  );
}
