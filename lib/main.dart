import 'package:demo_app/presentation/listcores.screen.dart';
import 'package:demo_app/screen/details/details.screen.dart';
import 'package:demo_app/screen/home/home.screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.light(useMaterial3: true),
    initialRoute: '/',
    routes: {
      '/details': (context) => Scaffold(body: DetailsScreenState()),
      '/': (context) => Scaffold(
            body: ListCoresScreen(),
          )
    },
    //home: Scaffold(body: HomeScreen(),),
  ));
}
