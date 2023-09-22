import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class TodoItem {
  @HiveField(0)
  late String description;

  @HiveField(1)
  late bool isCompleted;

  TodoItem(this.description, this.isCompleted);
   List<List<dynamic>> todolist = [];

  final _mybox = Hive.box('mybox');

  void loaddata() {
    todolist = _mybox.get("Todolist");
  }

  void updatedata() {
    _mybox.put("Todolist", todolist);
  }
}
