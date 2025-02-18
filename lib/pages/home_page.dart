import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp/models/todo.dart';
import 'package:flutterapp/providers/todo_provider.dart';


class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final todoList = ref.watch(todoProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            TextFormField(
              onFieldSubmitted: (val){
                ref.read(todoProvider.notifier).addTodo(Todo.add(val));
                

              },
              decoration: InputDecoration(
                hintText: 'What do you want to do?',
              ),
            ),
            const SizedBox(height: 20,),

            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index){
                      final todo = todoList[index];
                      return ListTile(
                        leading: Icon(Icons.today_outlined),
                        title: Text(todo.todo),
                      );
                    },
                    separatorBuilder: (context, index){
                      return Divider();
                    },
                    itemCount: todoList.length
                )
            )


          ],
        ),
      ),
    );
  }
}