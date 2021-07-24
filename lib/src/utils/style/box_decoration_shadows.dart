import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';


const borderRadius = BorderRadius.all(Radius.circular(20));
const boxShadows = [
  BoxShadow(
    color: Color.fromRGBO(210, 211, 215, 1.0),
    offset: Offset(0,5),
    blurRadius: 10.0
)];

Decoration createBoxDecorationWithShadows({BorderRadiusGeometry borderRadius = borderRadius, Color containerColor = Colors.white, List<BoxShadow> boxShadows = boxShadows  }) {
  return BoxDecoration(
      borderRadius: borderRadius,
      color: containerColor,
      boxShadow: boxShadows,
  );
}