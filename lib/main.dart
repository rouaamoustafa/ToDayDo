import 'package:flutter/material.dart';
import 'package:todaydo/models/Task_data.dart';
import 'package:todaydo/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>TaskData(),
      child: MaterialApp(
         home: TasksScreen(),

   ),
    );
  }
}
