

import 'package:flutter/material.dart';
import 'package:flutter_application_8/about.dart';
import 'package:flutter_application_8/github.dart';
import 'package:flutter_application_8/homepage.dart';
import 'package:flutter_application_8/project.dart';


void main(List<String> args) {
  
  runApp( new MaterialApp(
    
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home':(context) =>myhome(), 
      'about':(context) => myabout(),
      'project':(context) => myproject(),
      'git':(context) => mygit(),
    },

  ),
  );
}
