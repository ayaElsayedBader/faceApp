import 'package:flutter/material.dart';

import '../../../../core/resource/styles/val_app.dart';
import '../widget/get_list_comment.dart';
import '../widget/the _first_row_comment_page.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
            top: ValApp.va40, left: ValApp.va10, right: ValApp.va15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FirstRowCommentPage(),
            const SizedBox(
              height: ValApp.va3,
            ),
            Row(
              children: const [
                Text(
                  'Most relevant',
                  style: TextStyle(fontSize: ValApp.va14),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            GetListComment(

            )
          ],
        ),
      ),
    );
  }
}
