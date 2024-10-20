class TodoModel {
  int? userId;
  int? id;
  late String title;
  late bool completed = false;

  TodoModel(
      {this.userId, this.id, required this.title, required this.completed});

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'completed': completed ? 1 : 0};
  }

  //metodo para cirar todo  a partir de um mapa
  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
        id: map['id'], title: map['title'], completed: map['completed'] == 1);
  }

  void toogleCompleted() {
    completed = !completed;
  }
  // TodoModel.fromJson(Map<String, dynamic> json) {
  //   userId = json['userId'];
  //   id = json['id'];
  //   title = json['title'];
  //   completed = json['completed'];
  // }

  // Map<String, dynamic> toJson() {
  //   final data = Map<String, dynamic>();
  //   data['userId'] = userId;
  //   data['id'] = id;
  //   data['title'] = title;
  //   data['completed'] = completed;
  //   return data;
  // }
}
