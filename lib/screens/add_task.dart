import 'package:flutter/material.dart';
import 'package:todo_app/Models/Tasks.dart';
import 'package:todo_app/widgets/tasklist.dart';
import 'package:todo_app/Models/TaskData.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  late String? task;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xff757575),
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                decoration: InputDecoration(fillColor: Colors.lightBlueAccent),
                onChanged: (value) {
                  task = value.toString();
                },
              ),
              SizedBox(
                height: 20.0,
              ),
              MaterialButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(task.toString());
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                color: Colors.lightBlueAccent,
                padding:
                    EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
