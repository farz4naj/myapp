import 'package:flutter/material.dart';
import 'package:untitled3/constants.dart';


class ReusableCard extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final void Function()? onPress;
  ReusableCard({this.color, this.child, this.onPress});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color ?? kActiveCardColor,
            borderRadius: BorderRadius.circular(10)),
        child: child,
      ),
    );
  }
}