import 'package:flutter/material.dart';

import 'package:listview/src/repositories/todo_repository.dart';
import 'package:listview/src/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final TodoRepository repository = TodoRepository();
  final HomeController controller;

  HomePage({super.key}) : controller = HomeController(TodoRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List Todos'),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: ((context, index) {
                      final todo = controller.todos[index];
                      print(controller.todos.length);
                      return ListTile(
                          title: Text(
                        todo.title,
                        style: TextStyle(
                            decoration: todo.completed
                                ? TextDecoration.lineThrough
                                : null),
                      ));
                    })))
          ],
        )

        // ListView.builder(
        //     itemCount: Todos,
        //     itemBuilder: (context, index) {
        //       return ListTile(title: Text('item $index'));
        //     }));
        );
  }
}
