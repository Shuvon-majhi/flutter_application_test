import 'package:flutter/material.dart';
import 'package:flutter_application_test/second_screen.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> { 
  
  var myValue = TextEditingController();
  var name = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                labelText: 'Enter the name',
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
            ),
          ),
          Center(
            child: TextField(
              controller: myValue,
              decoration: InputDecoration(
                labelText: 'Enter the data',
                border: InputBorder.none,
                floatingLabelBehavior: FloatingLabelBehavior.never,
              ),
            ),
          ),
          
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SecondScreen(UserName:name.text, value: myValue.text)),
                );
              },
              child: Text(
                "Pass the data",
                style: TextStyle(fontSize: 24),
              ))
        ],
      ),
    );
  }
}
