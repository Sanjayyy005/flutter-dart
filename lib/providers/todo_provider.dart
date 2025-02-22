import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp/models/todo.dart';



final todoProvider = NotifierProvider<TodoProvider, List<Todo>>(() => TodoProvider());

class TodoProvider extends Notifier<List<Todo>>{
  @override
  List<Todo> build() {
    return [
      Todo(todo: 'get up in the morning', isCompleted: false),
      Todo(todo: 'get up in the afternoon', isCompleted: false),
    ];
  }

  void addTodo(Todo todo){
    state = [...state, todo];
  }

  void removeTodo(Todo todo){
    state.remove(todo);
    state = [...state];
  }

  void updateTodo(Todo newTodo, bool val){
    state = [
      for(final todo in state) todo == newTodo ? newTodo.copyWith(isCompleted: val) : todo
    ];
  }
}
