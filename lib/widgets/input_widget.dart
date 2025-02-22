import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterapp/models/todo.dart';
import 'package:flutterapp/providers/todo_provider.dart';
import 'package:form_builder_validators/form_builder_validators.dart';


class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final _formkey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) => FormBuilder(
        key: _formkey,
          child: Column(
            children: [
             FormBuilderTextField(
               onSubmitted: (val) {
                 if(_formkey.currentState!.saveAndValidate(focusOnInvalid: false)) {
                   ref.read(todoProvider.notifier).addTodo(Todo.add(val!));
                   _formkey.currentState!.reset();
                 }
               },
                 name: 'todo',
                 decoration: InputDecoration(
                 labelText: 'What do you want to do?',
               ),
                validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(),
                FormBuilderValidators.minLength(5),
               ]),
             ),
              // ElevatedButton(
              //     onPressed: (){
              //       if(_formkey.currentState!.saveAndValidate(focusOnInvalid: false)){
              //
              //       }
              // }, child:Text('submit'))
            ],
          )
      ),
    );
  }
}
