import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';

import '../Headers/header_text.dart';

Widget cardVertical(
    {BuildContext context,
    double width,
    double height,
    ImageProvider<Object> image,
    String title,
    String subtitle
    })
{
  return Container(
    margin: EdgeInsets.all(5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: width,
            height: height,
            fit: BoxFit.cover,
            image: image,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.only(top: 5.0),
                child: headerText(
                    texto: title,
                    fontWeight: FontWeight.w500,
                    fontsize: 17.0)),
            Container(
                margin: EdgeInsets.only(top: 5.0),
                child: headerText(
                    texto: subtitle,
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontsize: 13.0)),
          ],
        )
      ],
    ),
  );
}
