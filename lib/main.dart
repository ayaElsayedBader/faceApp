import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/comment_ screen/controller/todo_cubit.dart';
import 'features/comment_ screen/data/remote_data_scource.dart';
import 'features/home_screen/view/page/home_page.dart';
import 'features/message_chat_screen/control/cubit/message_cubit.dart';
import 'features/message_chat_screen/model/data/remote_data_scource.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
          TodoCubit(apiServer: ApiServer())
            ..getData(),
        ),
        BlocProvider(
            create: (context) =>
            MessageCubit(apiServer: ApiServerMessage())
              ..getMessageDataCubit())
      ],
      child: const MaterialApp(home: HomePage()),
    );
  }
}

// اللهم صل علي محمد   وعلي ال محمد كما صليت علي ابراهيم وعلي ال ابراهيم في العالمين انك حميد مجيد
