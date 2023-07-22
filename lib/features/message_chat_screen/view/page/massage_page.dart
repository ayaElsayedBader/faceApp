import 'package:flutter/material.dart';
import '../../../../core/resource/styles/val_app.dart';
import '../../control/cubit/message_cubit.dart';
import '../widget/leading_app_bar_widget.dart';
import '../widget/nav_message_page.dart';
import '../widget/success_message.dart';
import '../widget/title _app_bar_message.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          elevation: ValApp.va1,
          backgroundColor: Colors.white,
          leading: const LeadingAppBarWidget(),
          title: const TitleWidget(),
        ),
        body:
            SingleChildScrollView(

              child: Column(
                children: [
                  BlocBuilder<MessageCubit, MessageState>(builder: (context, state) {
          if (state is MessageSuccess) {
                  return SuccessMessage(message: state.message);
          } else if (state is MessageError) {
                  return Center(
                    child: Text(state.message),
                  );
          } else {
                  return const Center(child: CircularProgressIndicator());
          }
        }),
                  BottomNavMessagePage()
                ],
              ),
            ));
  }
}
//Todo
