import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final void Function(String) addTaskCallBack;
  const AddTaskScreen({
    Key? key,
    required this.addTaskCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = "";
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              onPressed: () {
                if (newTaskTitle.isNotEmpty) {
                  addTaskCallBack(newTaskTitle);
                }
              },
              child: const Center(child: Text('Add')),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
