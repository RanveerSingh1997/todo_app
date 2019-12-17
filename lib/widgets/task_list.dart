import 'package:flutter/material.dart';
import 'package:hello_world/models/task_data.dart';
import 'package:hello_world/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemCount: taskData.taskCount,
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isdone,
            checkboxCalled: (checkboxState) {
              taskData.updateTask(task);
            },
            longPressCallback: () {
              taskData.deleteData(task);
            },
          );
        },
      );
    });
  }
}
