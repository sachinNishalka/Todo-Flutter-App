import 'package:flutter/material.dart';
import 'package:todo_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Models/TaskData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        color: Colors.lightBlueAccent,
        home: TasksScreen(),
      ),
    );
  }
}
