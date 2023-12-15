import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class apitest extends StatefulWidget {
  @override
  State<apitest> createState() => _apitestState();
}

class _apitestState extends State<apitest> {
  @override
  List<dynamic> my = [
    "hello",
    'angela white',
    'jenna starr',
    'Sophie dee',
    'Julia Ann',
    'Kendra Lust',
    'abigail moriies',
    'dixie',
    'savana bond',
    'lyal',
    'alison lylor',
    'karma Rx',
    'challen preston',
    'angel wicky',
    'Phonix marie'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("MY APP"),
          backgroundColor: Colors.deepPurple[300],
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: my.length,
          itemBuilder: (BuildContext context, int index) {
            var Curr_Value = my[index];
            return ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              trailing: Icon(Icons.call),
              title: Text(Curr_Value),
            );
          },
        ),
      ),
    );
  }
}
