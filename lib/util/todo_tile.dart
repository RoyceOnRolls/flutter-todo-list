import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleated;
  Function(bool?)? onChanged;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleated,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Container(
        padding: EdgeInsets.all(12),
        child: Row(children: [
          Checkbox(value: taskCompleated, onChanged: onChanged),
          Text(
            taskName,
            style: TextStyle(color: Colors.white, fontSize: 16),
          )
        ]),
        decoration: BoxDecoration(
            color: Colors.deepPurple, borderRadius: BorderRadius.circular(24)),
      ),
    );
  }
}
