//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CircularIndicator extends StatefulWidget {
  const CircularIndicator({super.key});

  @override
  State<CircularIndicator> createState() => _CircularIndicatorState();
}

class _CircularIndicatorState extends State<CircularIndicator> {
  double value = 0.66;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: CircularPercentIndicator(
              animation: true,
              animationDuration: 1000,
              radius: 100,
              lineWidth: 20,
              percent: value,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade200,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text(
                "${value * 100}%",
                style: TextStyle(fontSize: 40, color: Colors.deepPurple),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
