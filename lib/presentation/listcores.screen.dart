import 'package:demo_app/domain/fetchcores.usecase.dart';
import 'package:flutter/material.dart';

class ListCoresScreen extends StatelessWidget {
  const ListCoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FutureBuilder(
          future: FetchCoresUseCase().fetchCores(),
          builder: (contexy, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if(snapshot.connectionState == ConnectionState.done) {
              return ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) {
                 return Text(snapshot.data?[index].name ?? '');
              });
            }else {
              return Text('Error');
            }
          }),
    );
  }
}
