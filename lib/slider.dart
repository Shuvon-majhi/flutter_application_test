import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  double _currValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("S L I D E R")),
      ),
      body: Column(

      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(_currValue.toString()),

        Slider(
            value: _currValue,
            activeColor: Colors.blue,
            inactiveColor: Colors.blue[200],
            thumbColor: Colors.red,
            min: 0,
            max:4,
            //label:"hello",
            onChanged: (value) {
              setState(() {
                _currValue = value;
              });
            }),
      ],
    ));
  }
}
