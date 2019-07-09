import 'package:flutter/material.dart';
import './login/login.dart';

void main() => runApp(
  MaterialApp(
    theme: ThemeData(
        primarySwatch: Colors.grey,
        buttonColor: Colors.blue
    ),
    title: 'Petinder',
    home: new Login(),
  )
);

