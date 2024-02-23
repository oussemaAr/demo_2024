import 'package:flutter/material.dart';

CardViewContent(
    Function() onClickEvent, {
    name = 'Default Name',
    profession = 'Dev',
  }) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.account_box),
        title: Text(name),
        subtitle: Text(profession),
        trailing: OutlinedButton(
            onPressed: () {
              onClickEvent();
            },
            child: Icon(Icons.next_plan)),
      ),
    );
  }