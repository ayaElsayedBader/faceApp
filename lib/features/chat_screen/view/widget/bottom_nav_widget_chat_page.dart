import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../comment_ screen/controller/todo_cubit.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodoCubit, TodoState>(
      builder: (context, state) {
        return BottomNavigationBar(
          currentIndex: BlocProvider.of<TodoCubit>(context).select,
          onTap: (val) {
            BlocProvider.of<TodoCubit>(context).plusNumber(currentSelect: val);
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble), label: 'الدرداشات'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call_sharp), label: 'المكالمات'),
            BottomNavigationBarItem(
                icon: Icon(Icons.people), label: '  الاشخاص')
          ],
        );
      },
    );
  }
}
