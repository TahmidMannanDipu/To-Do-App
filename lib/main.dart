import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app/pages/home_page.dart'; // Adjust the path if needed

void main() async {
  // Ensure Flutter is fully initialized before any async operation
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive for Flutter
  await Hive.initFlutter();

  // Open the Hive box (critical step!)
  await Hive.openBox('mybox');

  runApp( ToDoApp());
}

class ToDoApp extends StatelessWidget {
  ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow
      ),
      home: const HomePage(),
      // Set your HomePage here
    );
  }
}
