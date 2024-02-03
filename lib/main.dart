import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/Models/note_model.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/views/home_view.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kHiveBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: HomeView(),
    );
  }
}
