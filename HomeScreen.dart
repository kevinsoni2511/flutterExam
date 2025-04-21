import 'package:flutter/material.dart';
import 'AddStudent.dart';
import 'Slider.dart';
import 'ViewStudent.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Student Mangament App",)),
      drawer: Drawer(child: ListView(
        children: [
          UserAccountsDrawerHeader(currentAccountPicture: CircleAvatar(child: Text("K"),),
              accountName: Text("Kevin Soni"), accountEmail: Text("kevin@gmail.com")),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return AddStudent();
              }));
            },
            leading: Icon(Icons.add),
            title: Text("Add Student"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context){
                return ViewStudent();
              }));
            },
            leading: Icon(Icons.view_agenda_outlined),
            title: Text("Display Student"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (Context){
                return SettingsScreen();
              }));
            },
            leading: Icon(Icons.linear_scale_rounded),
            title: Text("Slider"),
          )
        ],
      ),
      ),
      body:Center(child: Text("Welcome to the studeng App",style: TextStyle(fontSize: 24),)),
    );
  }
}
