import 'package:flutter/material.dart';
import 'package:glass_morphism/glass_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      alignment: Alignment(0, 0),
      child: GlassBox(
        height: 200.0,
        width: 250.0,
        child: Center(
          child: Text(
            "Frosted Glass Effect",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18 + 0),
          ),
        ),
      ),
    ));
  }
}
