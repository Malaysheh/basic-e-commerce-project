import 'package:appten/Screens/HomePage.dart';
import 'package:appten/Screens/categorys.dart';
import 'package:flutter/material.dart';



navigateTo(context, pageName) {
  return () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => pageName));
  };
}



