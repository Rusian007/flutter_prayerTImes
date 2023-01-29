import 'package:flutter/material.dart';
import 'package:prayertimes/Pages/home.dart';
import 'package:prayertimes/Pages/loading.dart';
import 'package:prayertimes/Pages/choose_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
  ));
}
