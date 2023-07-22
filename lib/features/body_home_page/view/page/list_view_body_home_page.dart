import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/list_app.dart';
import '../../../../core/resource/styles/string_app.dart';
import '../../../../core/resource/styles/val_app.dart';
import '../../../home_screen/view/widget/custom_row_comment_like_share.dart';
import '../../../home_screen/view/widget/list_view_stories .dart';
import '../../../home_screen/view/widget/widget_text_field_image_in_homePage.dart';
import '../widget/row_body.dart';

class BodyHomePageView extends StatelessWidget {
  const BodyHomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
height: 590,
      child: ListView.builder(
     //  physics:  BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: imageA.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [


              Padding(
                padding: const EdgeInsets.all(ValApp.va10),
                child: getRowBodyClose(),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  right: ValApp.va10,
                  bottom: ValApp.va7,
                ),
                child: Text(
                  '❤️اسمع الجمال ده', //Todo Api
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset(
                imageA[index],
                fit: BoxFit.fill,
                //  width: double.infinity,
                //  height: ValApp.va300,ca
              ),
              Padding(
                padding: const EdgeInsets.all(ValApp.va10),
                child: Row(
                  children: const [
                    Text(StringApp.share2),
                    Spacer(),
                    Text(StringApp.react)
                  ],
                ),
              ),
              const Divider(
                height: ValApp.va3,
                color: ColorApp.grey500,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ValApp.va20,
                  vertical: ValApp.va10,
                ),
                child: RowCommentAndShareAndLike(),
              ),
              const Divider(
                thickness: ValApp.va7,
              ),
            ],
          );
        },
      ),
    );
  }
}
