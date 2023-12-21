import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class avaterGlow extends StatelessWidget {
  const avaterGlow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("avater Glow"),
        centerTitle: true,
      ),
      body: Center(
        child: AvatarGlow(
          glowRadiusFactor: 0.7,
          animate: true,
          child: Material(
            // Replace this child with your own
            elevation: 8.0,
            shape: CircleBorder(),
            child: CircleAvatar(
              backgroundColor: Colors.grey[100],
              child: Image.asset(
                'lib/images/sea1.jpeg',
                height: 50,
              ),
              radius: 30.0,
            ),
          ),
        ),
      ),
    );
  }
}
