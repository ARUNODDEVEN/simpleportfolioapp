

import 'package:flutter/material.dart';
import 'package:flutter_application_8/homepage.dart';

void main(List<String> args) {
  
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'home',
    routes: {
      'home':(context) =>myhome(), 
    },

  ),
  );
}
