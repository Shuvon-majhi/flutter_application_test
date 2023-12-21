import 'package:flutter/material.dart';

class textW extends StatelessWidget {
  const textW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0dfea),
      body: Center(
        child: Text(
            "I am writing to inform you that SHUVON MAJHI will attend the Master of Business Administration (MBA) program at BAU in the USA starting on Summer, and I am delighted to confirm that all the student’s expenses and/or fees will be financed by me SHEFALI MAJHI (Mother) during their stay in the United States.",
            textAlign: TextAlign.justify,
            maxLines: 2,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.teal,
              fontSize: 18
            ),
          ),
      ),
    );
  }
}
