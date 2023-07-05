import 'package:flutter/material.dart';
import 'package:todo_app/widgets/tasklist.dart';
import 'package:todo_app/screens/add_task.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Models/TaskData.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 40),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.list,
                  size: 100.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 40.0),
              child: Text(
                'Todoey',
                style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 40.0),
              child: Text(
                '${Provider.of<TaskData>(context).taskCount} Tasks',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
            TaskList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 5.0,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => AddTask(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
