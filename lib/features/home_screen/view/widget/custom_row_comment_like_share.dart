import 'package:flutter/material.dart';

import '../../../../core/resource/styles/color_app.dart';
import '../../../../core/resource/styles/string_app.dart';
import '../../../comment_ screen/view/page/comment_page.dart';

class RowCommentAndShareAndLike extends StatelessWidget {
  const RowCommentAndShareAndLike({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        customRowCommentAndShareAndLike(
            icon: Icons.share, text: StringApp.share),
        MaterialButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const CommentPage()));
          },
          child: customRowCommentAndShareAndLike(
              icon: Icons.comment, text: StringApp.comment),
        ),
        customRowCommentAndShareAndLike(
            icon: Icons.thumb_up, text: StringApp.like),
      ],
    );
  }
}

Widget customRowCommentAndShareAndLike(
    {required String text, required IconData icon}) {
  return Row(
    children: [
      Text(text),
      Icon(icon, color: ColorApp.grey500),
    ],
  );
}
