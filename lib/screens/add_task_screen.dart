import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {
//  AddTaskScreen({this.taskList, this.addNewTask, this.onTextInputChange});
//  final List<Task> taskList;
//  final Function addNewTask;
//  final Function onTextInputChange;
  @override
  Widget build(BuildContext context) {
    String newTaskDetail;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
            ),
            TextField(
              autofocus: true,
              onChanged: (value) {
                newTaskDetail = value;
              }, //  onTextInputChange
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TasksData>(context, listen: false)
                    .addTask(Task(detail: newTaskDetail));
                Navigator.pop(context);
                //TODO
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              color: Colors.lightBlueAccent,
            )
          ],
        ),
      ),
    );
  }
}
