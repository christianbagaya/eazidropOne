import 'package:ekwanso/signup.dart';
import 'package:ekwanso/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
//        appBar: AppBar(
//          title: Text("Eazi drop"),
//        ),
        body: SignupWidget(),
      ),
    ),
  );
}

