import 'package:flutter/material.dart';

import '../../../../core/resource/list_face_app.dart';
import '../../../../core/resource/styles/list_app.dart';
import '../../../../core/resource/styles/val_app.dart';

class ActivePeople extends StatelessWidget {
  const ActivePeople({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Expanded(
        child: ListView.builder(
        shrinkWrap: true,
          padding: const EdgeInsets.all(7),
          scrollDirection: Axis.horizontal,
          itemCount: namesFace.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: ValApp.va15,
                      ),
                      child: CircleAvatar(
                        radius: ValApp.va25,
                        backgroundImage: AssetImage(imageA[index]),
                      ),
                    ),
                    Positioned(
                      bottom: ValApp.va12,
                      right: ValApp.va10,
                      child: Container(child: cim()),
                    )
                  ],
                ),
                     Text(namesFaceB[index] ,style: TextStyle(fontSize: 15),)
              ],
            );
          },
        ),

    );
  }
}

Widget cim() {
  return Container(
    decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
      BoxShadow(
          color: Colors.white, spreadRadius: ValApp.va5, blurRadius: ValApp.va2)
    ]),
    child:
        const CircleAvatar(radius: ValApp.va5, backgroundColor: Colors.green),
  );
}
