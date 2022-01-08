import 'package:flutter/material.dart';
class Bars extends StatelessWidget {
  Bars({this.color, this.height});
  final double ? height;
  final Color ?color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Card(
        color: color,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: height!, horizontal: 3),
        ),
      ),
    );
  }
}
