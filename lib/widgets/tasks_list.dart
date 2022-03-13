import 'package:flutter/material.dart';
import './tasks_tile.dart';
import '../models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
                isChecked: task.isDone,
                taskTitle: task.name,
                checkboxCallBack: (bool? checkboxState) {
                  taskData.updateTask(task);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
