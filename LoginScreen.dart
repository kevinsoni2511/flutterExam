// login_screen.dart
import 'package:flutter/material.dart';
import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController UserNm = TextEditingController();

  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            children: [
              TextField(controller: UserNm, decoration:
              InputDecoration(labelText: 'Username'),
              ),
              SizedBox(height:30),

              TextField(controller: pass, decoration:
              InputDecoration(labelText: 'Password'),
              ),
              SizedBox(height:30),
              ElevatedButton(
                onPressed: () {
                  // Static login check
                  if (UserNm.text == 'admin' && pass.text == 'admin') {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context){
                        return HomeScreen();
                        },
                    ));
                  }
                },
                child: Text('Login'),
              ),

            ]

            ),
      ));

  }
}