import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/widgets/header_text.dart';

class ListTileCheck extends StatefulWidget {
  @override
  _ListTileCheckState createState() => _ListTileCheckState();
}

class _ListTileCheckState extends State<ListTileCheck> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(context: context, texto: 'Top Rated')
      ],
    );
  }
}


Widget listTiles({BuildContext context, texto: String, isActive:bool, Function function }) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context).dividerColor
        )
      )
    ),
    child: ListTile(
      onTap: function,
      title: headerText(
        texto: texto,
        color: orange,
        fontWeight: FontWeight.w300,
        fontsize: 17
      ),
      trailing: Icon(Icons.check, color: orange,),
    ),
  );
}