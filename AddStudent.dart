import 'package:flutter/material.dart';
import 'GlobalData.dart';
import 'Student.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  @override
  TextEditingController txtNm = new TextEditingController();
  TextEditingController age = new TextEditingController();
  TextEditingController course = new TextEditingController();
  TextEditingController dob = new TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Add Student"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: txtNm,
              decoration: InputDecoration(labelText: "Enter name"),
            ),
            SizedBox(height:30),
            TextField(
              controller: age,
              decoration: InputDecoration(labelText: "Enter Age"),
            ),
            SizedBox(height:30),
            TextField(
              controller: course,
              decoration: InputDecoration(labelText: "Enter course"),
            ),
            SizedBox(height:30),
            TextField(
              controller: dob,
              decoration: InputDecoration(labelText: "Enter Date of Birth"),
            ),
            SizedBox(height:30),
            ElevatedButton(onPressed: (){
            // create Student
              Student newStud = new Student();
            //  Assign the Values
              newStud.StuNm=txtNm.text;
              newStud.StuAge=int.tryParse(age.text)?? 0;
              newStud.StuCourse=course.text;
              newStud.StuDob=dob.text;
            //  Add Object TO List
              GlobalData.Std.add(newStud);

            }, child: Text("Add Student"))
          ],
        ),
      ),
    );
  }
}
