import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  late bool isActive;
  SlideDots(this.isActive);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(microseconds: 150),
        margin: EdgeInsets.all(10),
        height: isActive ? 12 : 8,
        width: isActive ? 12 : 8,
        decoration: BoxDecoration(
            color: isActive ? Theme.of(context).primaryColor : Colors.grey,
            borderRadius: const BorderRadius.all(Radius.circular(12))));
  }
}
