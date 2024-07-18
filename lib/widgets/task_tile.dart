import 'package:flutter/material.dart';

// class TaskTile extends StatefulWidget {
//   @override
//   State<TaskTile> createState() => _TaskTileState();
// }

// class _TaskTileState extends State<TaskTile> {
//   bool isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(
//         'task 1',
//         style: TextStyle(
//           decoration: isChecked ? TextDecoration.lineThrough : null,
//         ),
//       ),
//       trailing: TaskCheckBox(isChecked, (bool? newState) {
//         setState(() {
//           isChecked = newState ?? false;
//         });
//       }),
//     );
//   }
// }

// class TaskCheckBox extends StatelessWidget {
//   TaskCheckBox(this.checkBoxState, this.toggleCheckBoxState);

//   final bool checkBoxState;
//   final ValueChanged<bool?> toggleCheckBoxState;

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkBoxState,
//       onChanged: toggleCheckBoxState,
//       activeColor: Colors.orangeAccent[400],
//     );
//   }
// }

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?> checkBoxCallBack;
  final Function longPressCallBack;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkBoxCallBack,
        activeColor: Colors.orangeAccent[400],
      ),
    );
  }
}
