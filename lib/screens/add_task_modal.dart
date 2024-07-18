import 'package:flutter/material.dart';
import 'package:todoey/tasks_data.dart';
import 'package:todoey/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey/tasks_data.dart';

class AddTaskModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(right: 20, left: 20, top: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.orangeAccent[400], fontSize: 30),
          ),
          TextField(
            onChanged: (newText) {
              newTaskTitle = newText;
            },
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.orangeAccent),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.orangeAccent[400],
            ),
            child: Text("Add",
                style: TextStyle(color: Colors.white, fontSize: 15)),
          )
        ]),
      ),
    );
  }
}
