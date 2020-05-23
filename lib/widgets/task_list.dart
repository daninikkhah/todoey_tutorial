import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/tasks_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemBuilder: (context, index) => TaskTile(
            detail: tasksData.tasks[index].detail,
            bIsChecked: tasksData.tasks[index].bIsDone,
            onChangeFunction: (newState) {
              tasksData.toggleTaskState(index); //TODO do something
            },
            onLongPress: () {
              tasksData.delete(index);
            },
          ),
          itemCount: tasksData.tasks.length,
        );
      },
    );
  }
}
