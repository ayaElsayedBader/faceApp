import 'package:flutter/material.dart';


import '../../../../core/resource/styles/val_app.dart';
import '../widget/bottom_app_bar_home_page.dart';
import '../../../body_home_page/view/page/list_view_body_home_page.dart';
import '../widget/list_view_stories .dart';
import '../widget/over_app_bar_home_page.dart';
import '../widget/widget_text_field_image_in_homePage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 400,
          toolbarHeight: 120,
          leading: Column(
            children: [
              OverAppBarHomePage(),
              BottomRowWidgetAppBarHomePage(),



            ],
          ),

          //     OverAppBarHomePage(),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
             child:  Padding(
                  padding: EdgeInsets.only(
                      left: ValApp.va5,
                      right: ValApp.va5,
                      bottom: ValApp.va12),
                  child: RowImageTextCircle()),
            ),
            SliverToBoxAdapter(
              child:     StoresWidget(),
            ),SliverToBoxAdapter(
              child:  BodyHomePageView()),

          ],
       //   physics:  AlwaysScrollableScrollPhysics(),

            // padding: EdgeInsets.only(top: 20),
            //  children: [
            //    SizedBox(
            //
            //      child: Column(
            //        children: [
            //
            //          Divider(
            //            thickness: ValApp.va7,
            //          ),
            //
            //
            //          Divider(
            //            thickness: ValApp.va7,),
            //
            //
            //
            //
            //
            //          // BodyHomePageViewTest(),
            //        ],
            //
            //      ),
            //
            //    ),
            //    SizedBox(child: BodyHomePageView()),
            //  ],

          ),
       );
  }
}
//الحمد حمد طبيا كثير مباركا فيه
