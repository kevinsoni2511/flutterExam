import 'package:flutter/material.dart';
import 'package:student_management_app/SplashScreen.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen(),));
}

class Student_Managment_App extends StatefulWidget {
  const Student_Managment_App({super.key});

  @override
  State<Student_Managment_App> createState() => _Student_Managment_AppState();
}

class _Student_Managment_AppState extends State<Student_Managment_App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Mangement App'),),
    );
  }
}