import 'dart:math';

import 'package:demo_app/screen/home/home.screen.dart';
import 'package:flutter/material.dart';

class DetailsScreenState extends StatefulWidget {
  const DetailsScreenState({super.key});

  @override
  State<DetailsScreenState> createState() => DetailsScreenStateState();
}

class DetailsScreenStateState extends State<DetailsScreenState> {
  final List<String> cities =
      List.of(['china', 'england', 'europe', 'italy', 'mexico', 'petra']);

  String currentCity = 'england';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                child: Icon(Icons.back_hand),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              currentCity == 'china' ? Text("True") : Text('False'),
              Image.asset('assets/images/$currentCity.png', width: 200),
              Visibility.maintain(
                child: Text("Corona"),
                visible: currentCity != 'china',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 60),
                child: FilledButton(
                    onPressed: () {
                      int index = Random().nextInt(5);
                      setState(() {
                        currentCity = cities[index];
                      });
                    },
                    child: Text("generate image")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
