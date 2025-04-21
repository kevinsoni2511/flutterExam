import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Color backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Column(
        children: [
          Text('Select Background Color', style: TextStyle(fontSize: 20)),
          Slider(
            value: backgroundColor.red.toDouble(),
            min: 0,
            max: 255,
            onChanged: (value) {
              setState(() {
                backgroundColor = Color.fromRGBO(
                  value.toInt(),
                  backgroundColor.red,
                  backgroundColor.blue,
                  1.0, // Full opacity
                );
              });
            },
          ),
          Slider(
            value: backgroundColor.green.toDouble(),
            min: 0,
            max: 255,
            onChanged: (value) {
              setState(() {
                backgroundColor = Color.fromRGBO(
                  backgroundColor.red,
                  value.toInt(),
                  backgroundColor.blue,
                  1.0, // Full opacity
                );
              });
            },
          ),
          Slider(
            value: backgroundColor.blue.toDouble(),
            min: 0,
            max: 255,
            onChanged: (value) {
              setState(() {
                backgroundColor = Color.fromRGBO(
                  backgroundColor.red,
                  backgroundColor.green,
                  value.toInt(),
                  1.0, // Full opacity
                );
              });
            },
          ),
        ],
      ),
      backgroundColor: backgroundColor,
    );
  }
}