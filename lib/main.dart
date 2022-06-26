import 'package:flutter/material.dart';
import 'package:portofolio_flutter/pages/home.dart';
import 'package:portofolio_flutter/pages/about.dart';
import 'package:portofolio_flutter/pages/projects.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'about',
    debugShowCheckedModeBanner: false,
    routes: {
      'home' : (context) => MyHome(),
      'about' : (context) => MyAbout(),
      'projects' : (context) => MyProjects()
    },
  ));
}