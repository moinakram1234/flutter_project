import 'package:flutter/material.dart';
import 'package:flutter_application_1/LoginPage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My app', // used by the OS task switcher
      home: LoginPage(),
    ),
  );
}
