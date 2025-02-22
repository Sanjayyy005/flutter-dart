import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/todo_provider.dart';



class TodoList extends ConsumerWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoList = ref.watch(todoProvider);
    return Expanded(
    child: ListView.separated(
    itemBuilder: (context, index){
  final todo = todoList[index];
  return ListTile(
  leading: Icon(Icons.today_outlined),
  title: Text(todo.todo),
    trailing: SizedBox(
      width: 90,
      child: Row(
        children: [
          IconButton(onPressed: (){
            ref.read(todoProvider.notifier).removeTodo(todo);
          }, icon: Icon(Icons.delete))
          
        ],
      ),
    ),
  );
  },
  separatorBuilder: (context, index){
  return Divider();
  },
  itemCount: todoList.length
  )
  );
  }
}
