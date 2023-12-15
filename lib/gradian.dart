import 'package:flutter/material.dart';

class gradient extends StatefulWidget {
  const gradient({super.key});

  @override
  State<gradient> createState() => _gradientState();
}

class _gradientState extends State<gradient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // back containar
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffb81736),
                  Color(0xff281537),
                ],
              ),
            ),

            // login text
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0, left: 20.0),
              child: Text(
                "Please\nLog in!",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 194.0),
            // upper white container
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              height: 400,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
