import 'package:flutter/material.dart';
import '../util/todo_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(
        title: Text('To do list'),
      ),
      // ignore: prefer_const_constructors
      body: ListView(padding: EdgeInsets.fromLTRB(0, 12, 0, 12), children: [
        ToDoTile(
          taskName: "Watch F1 Race",
          taskCompleated: false,
          onChanged: ((p0) {}),
        ),
        ToDoTile(
          taskName: "Go for a bike ride",
          taskCompleated: true,
          onChanged: ((p0) {}),
        ),
        ToDoTile(
          taskName: "Watch a movie",
          taskCompleated: true,
          onChanged: ((p0) {}),
        )
      ]),
    );
  }
}
