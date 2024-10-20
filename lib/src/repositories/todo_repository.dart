import 'package:http/http.dart' as http;
import 'package:listview/src/models/todo_model.dart';

class TodoRepository {
  final List<TodoModel> _todos = [];

  List<TodoModel> getTodos() {
    return _todos;
  }

  final url = Uri.parse('https://jsonplaceholder.typicode.com/todos');
  Future fetchTodos() async {
    final response = await http.get(url);
    final list = response.body as List;

    List<TodoModel> todos = [];
    for (var json in list) {
      final todo = TodoModel.fromMap(json);
      _todos.add(todo);
    }
    //print(todos);
    //return todos;
  }
}
