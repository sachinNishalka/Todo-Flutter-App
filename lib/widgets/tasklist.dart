import 'package:flutter/material.dart';
import 'package:todo_app/widgets/onetask.dart';
import 'package:todo_app/Models/Tasks.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Models/TaskData.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Expanded(
          child: Container(
            padding: EdgeInsets.all(40.0),
            margin: EdgeInsets.only(top: 40.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                final task = taskData.tasks[index];
                return OneTask(
                  title: task.name,
                  isChecked: task.isChecked,
                  checkBoxCallBack: (chekboxState) {
                    taskData.updateTask(task);
                  },
                  longPressCallBack: () {
                    taskData.deleteTask(task);
                  },
                );
              },
              itemCount: taskData.taskCount,
            ),
          ),
        );
      },
    );
  }
}
