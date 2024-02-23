
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(
        useMaterial3: true
      ),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){}),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
        drawer: Text("I'm a drawer"),
        body: SafeArea(
            child: Card(
              child: ListTile(
                leading: Icon(Icons.account_box),
                title: Text("Oussema Aroua"),
                subtitle: Text('Senior Android Developer'),
                trailing: OutlinedButton(onPressed: (){

                }, child: Icon(Icons.next_plan)),
              ),
            ),
        
        ),
      ),
    );
  }
}