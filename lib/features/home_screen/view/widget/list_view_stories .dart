import 'package:flutter/material.dart';

import '../../../../core/resource/styles/list_app.dart';
import '../../../../core/resource/styles/val_app.dart';

class StoresWidget extends StatelessWidget {
  const StoresWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ValApp.va150,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: imageA.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(ValApp.va5),
          child: Container(
            height: ValApp.va100,
            width: ValApp.va80,
            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imageA[index],
                  )),
              borderRadius: BorderRadius.circular(ValApp.va20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: ValApp.va10, bottom: ValApp.va5, left: ValApp.va35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: ValApp.va10,
                    backgroundImage: AssetImage(imageB[index]),
                  ),
                  const Text(
                    ' emy salam,',
                    style:
                        TextStyle(fontSize: ValApp.va10, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
