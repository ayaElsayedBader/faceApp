import 'package:face_app/features/comment_%20screen/view/widget/react_widget.dart';
import 'package:face_app/features/comment_%20screen/view/widget/suecces_todo.dart';
import 'package:face_app/features/comment_%20screen/view/widget/text_field_in_comment.dart';
import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/image_app.dart';
import '../../../../core/resource/styles/val_app.dart';

class GetListComment extends StatelessWidget {
  GetListComment({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return Column(children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: ValApp.va25,
                          backgroundImage: AssetImage(ImageApp.splash),
                        ),
                        const SizedBox(
                          width: ValApp.va10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              right: ValApp.va10,
                              top: ValApp.va8,
                              left: ValApp.va8,
                              bottom: ValApp.va10),
                          decoration: BoxDecoration(
                            color: ColorApp.indigo50,
                            borderRadius: BorderRadius.circular(ValApp.va10),
                          ),
                          child: const SuccessWidget(),
                        ),
                      ],
                    ),
                    const ReactWidget()
                  ]);
                }),
          ),
          const Divider(
            thickness: ValApp.va3,
          ),
          const CustomTextFieldPutComment()
        ],
      ),
    );
  }
}
