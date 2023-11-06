// ignore_for_file: prefer_const_constructors, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleated;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleated,
      required this.onChanged,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18, top: 18),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete_outline_outlined,
            backgroundColor: Colors.deepPurple.shade300,
            borderRadius: BorderRadius.circular(18),
          )
        ]),
        child: Container(
          padding: EdgeInsets.all(8),
          child: Row(children: [
            Checkbox(
              value: taskCompleated,
              onChanged: onChanged,
            ),
            Text(
              taskName,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  decoration: taskCompleated
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            )
          ]),
          decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(18)),
        ),
      ),
    );
  }
}
