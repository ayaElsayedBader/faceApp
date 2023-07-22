import 'package:flutter/material.dart';

import '../../../../core/resource/list_face_app.dart';
import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/list_app.dart';
import '../../../../core/resource/styles/val_app.dart';

class ItemAddFriend extends StatelessWidget {
  const ItemAddFriend({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 630,
        child: ListView.builder(
            itemCount: namesFace.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: ValApp.va15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: ValApp.va30),
                          child: Text('3 h '),
                        ),
                        const Spacer(),
                        Text(namesFace[index]),
                        const SizedBox(
                          width: ValApp.va30,
                        ),
                        CircleAvatar(
                          radius: ValApp.va30,
                          backgroundImage: AssetImage(imageB[index]),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: ValApp.va40),
                      child: Row(
                        children: [
                          customButton(
                              text: 'حذف',
                              color: ColorApp.grey200,
                              colorText: Colors.black),
                          const SizedBox(
                            width: ValApp.va10,
                          ),
                          customButton(
                              text: 'تاكيد',
                              color: const Color(0xff536dfe),
                              colorText: Colors.white),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }));
  }
}
//Todo اللهم كن لي  وكن معي واجعلني بك اقوي واغني

customButton(
    {required String text, required Color color, required Color colorText}) {
  return InkWell(
    onTap: () {},
    child: Container(
      alignment: Alignment.center,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      height: ValApp.va40,
      width: ValApp.va100,
      child: Text(text,
          style: TextStyle(color: colorText, fontWeight: FontWeight.bold)),
    ),
  );
}
