import 'package:hive/hive.dart';

class TodoDB {
  List toDoList = [];

  // reference the box that you have created
  final _myBox = Hive.box("myBox");

  // if the user is opening this app for the first time ever
  void createInitialDB() {
    toDoList = [
      ["Do exercise", false],
      ["Go shopping", false]
    ];
  }

  // load the data from DB
  void loadDB() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the DB
  void updateDB() {
    _myBox.put("TODOLIST", toDoList);
  }

}