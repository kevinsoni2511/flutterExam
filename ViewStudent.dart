import 'package:flutter/material.dart';
import 'EditStudent.dart';
import 'GlobalData.dart';

class ViewStudent extends StatefulWidget {
  const ViewStudent({super.key});

  @override
  State<ViewStudent> createState() => _ViewStudentState();
}

class _ViewStudentState extends State<ViewStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,title: Text("Student List"),
      ),
      body: ListView.builder(itemCount:GlobalData.Std.length,itemBuilder: (context,index){
        return ListTile(onLongPress: (){
          GlobalData.Std.removeAt(index);
          setState((){});
        },onTap: (){
          GlobalData.selectedIndex = index;
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return EditStudent();
          },)).then((value){
            setState(() {

            });

          });
        },
          subtitle: Text("Age: " + GlobalData.Std[index].StuAge.toString() +"\n"
              "Course: " + GlobalData.Std[index].StuCourse +"\n"
              "DoB: " + GlobalData.Std[index].StuDob)
          ,title: Text(GlobalData.Std[index].StuNm),
        );
      }
      ),
    );
  }
}
