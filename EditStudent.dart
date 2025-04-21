import 'package:flutter/material.dart';
import 'GlobalData.dart';

class EditStudent extends StatefulWidget {
  const EditStudent({super.key});

  @override
  State<EditStudent> createState() => _EditStudentState();
}

class _EditStudentState extends State<EditStudent> {
  @override
  TextEditingController txtNm = new TextEditingController(text: GlobalData.Std[GlobalData.selectedIndex].StuNm);
  TextEditingController age = new TextEditingController(text: GlobalData.Std[GlobalData.selectedIndex].StuAge.toString());
  TextEditingController course = new TextEditingController(text: GlobalData.Std[GlobalData.selectedIndex].StuCourse);
  TextEditingController dob = new TextEditingController(text: GlobalData.Std[GlobalData.selectedIndex].StuDob);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.cyan,
        title: Text("Edit Student"),
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
              GlobalData.Std[GlobalData.selectedIndex].StuNm = txtNm.text;
              GlobalData.Std[GlobalData.selectedIndex].StuAge = int.tryParse(age.text)??0;
              GlobalData.Std[GlobalData.selectedIndex].StuCourse = course.text;
              GlobalData.Std[GlobalData.selectedIndex].StuDob = dob.text;

              Navigator.pop(context);
            }, child: Text("Edit Student"))
          ],
        ),
      ),
    );
  }
}
