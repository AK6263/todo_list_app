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
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            taskTitle: Provider.of<TaskData>(context).tasks[index].name,
            checkboxCallBack: (bool? checkboxState) {
              // setState(() {
              //   widget.tasks[index].toggleDone();
              // });
            });
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
