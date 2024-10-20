import 'package:listview/src/models/todo_model.dart';
import 'package:listview/src/repositories/todo_repository.dart';

class HomeController {
  final TodoRepository _repository;
  // HomeState state = HomeState.start;

  HomeController(this._repository);
  List<TodoModel> get todos => _repository.getTodos();
  //  : _repository = repository ?? TodoRepository();

  // Future start() async {
  //   // state = HomeState.loading;
  //   todos = await _repository.fetchTodos();
  // }
}

enum HomeState { start, loading, success, error }
