import 'package:flutter/material.dart';
import 'package:flutter_application_1/Scaffold_widget.dart';
import 'package:flutter_application_1/button_widget.dart';
import 'package:flutter_application_1/dialog_widget.dart';
import 'package:flutter_application_1/image_widget.dart';
import 'package:flutter_application_1/input_selection.dart';
import 'package:flutter_application_1/stack_position.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackPosition()
    );
  }
}
