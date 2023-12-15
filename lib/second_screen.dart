import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({@required this.UserName, @required this.value});
  final value;
  final UserName;
  

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text('hi ${widget.UserName} you amount is ${widget.value}'),
          ],
        ),
      ),
    );
  }
}
