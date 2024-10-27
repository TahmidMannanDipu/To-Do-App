import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  final _myBox = Hive.box('mybox'); // Hive box reference

  // Create initial data
  void createInitialData() {
    toDoList = [
      ["Make tutorial", false],
      ["Do exercise", false],
    ];
    updateDatabase();
  }

  // Load data from the box
  void loadData() {
    toDoList = _myBox.get('TODOLIST', defaultValue: []);
  }

  // Update the database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
