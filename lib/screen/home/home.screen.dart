import 'package:demo_app/screen/details/details.screen.dart';
import 'package:demo_app/screen/home/home.widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            CardViewContent(() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreenState(),
                ),
              );
            }, name: 'Oussema Aroua'),
            CardViewContent(() {
              //Navigator.of(context).pushNamed('/details');
            }, profession: 'Mzawdi'),
          ],
        ),
      
    );
  }
}
