import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_app/pages/home_page.dart';
import 'package:to_do_app/splash_screen.dart'; // Adjust the path if needed

void main() async {
  // Ensure Flutter is fully initialized before any async operation
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive for Flutter
  await Hive.initFlutter();

  // Open the Hive box (critical step!)
  await Hive.openBox('mybox');

  runApp( const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.yellow
      ),
      home: const SplashScreen(),
      // Set your HomePage here
    );
  }
}
