import 'dart:ui';
import 'package:flutter/material.dart';

class GlassBox extends StatefulWidget {
  var height;
  var width;
  var child;

  GlassBox(
      {super.key,
      required this.height,
      required this.width,
      required this.child});

  @override
  State<GlassBox> createState() => _GlassBoxState();
}

class _GlassBoxState extends State<GlassBox> {
  var _borderRadius = BorderRadius.circular(30);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _borderRadius,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
            // color: Colors.deepPurple[50],
            ),
        child: Stack(
          children: [
            // blur effect
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(),
            ),
            // gradient effect
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  borderRadius: _borderRadius,
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(0.4),
                        Colors.white.withOpacity(0.1)
                      ])),
            ),
            // child
            widget.child
          ],
        ),
      ),
    );
  }
}
