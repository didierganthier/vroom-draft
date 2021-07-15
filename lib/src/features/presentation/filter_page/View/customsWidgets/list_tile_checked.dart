import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/widgets/header_text.dart';

class ListTileCheck extends StatefulWidget {
  String texto;
  bool isActive;
  Function function;

  ListTileCheck({Key key, this.texto, this.isActive, this.function}) : super(key: key);
  @override
  _ListTileCheckState createState() => _ListTileCheckState();
}

class _ListTileCheckState extends State<ListTileCheck> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTiles(
            context: context, texto: widget.texto, isActive: widget.isActive, function: widget.function)
      ],
    );
  }
}

Widget listTiles(
    {BuildContext context, texto: String, isActive: bool, Function function}) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      onTap: function,
      title: headerText(
          texto: texto,
          color: isActive ? orange : Colors.black,
          fontWeight: FontWeight.w300,
          fontsize: 17),
      trailing: isActive ? Icon(
        Icons.check,
        color: isActive ? orange : gris,
      ) : Text(''),
    ),
  );
}
