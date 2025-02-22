import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp/models/todo.dart';
import 'package:flutterapp/providers/todo_provider.dart';
import 'package:flutterapp/widgets/input_widget.dart';
import 'package:flutterapp/widgets/todo_list.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InputWidget(),
            const SizedBox(height: 20,),
            const TodoList(),
          ],
        ),
      ),
    );
  }
}