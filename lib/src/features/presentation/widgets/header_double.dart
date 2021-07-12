import 'package:flutter/material.dart';

import 'header_text.dart';

Widget headerDoubleText({ String textHeader, String textAction}) {
  return Container(
    child: Row(
      children: [
        headerText(texto: textHeader, fontsize: 20.0),
        Spacer(),
        GestureDetector(
            onTap: () {},
            child: headerText(texto: textAction, color: Colors.orange, fontWeight: FontWeight.w500, fontsize: 15.0))
      ],
    ),
  );
}