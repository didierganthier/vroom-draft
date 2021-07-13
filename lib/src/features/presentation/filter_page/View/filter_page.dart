import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/filter_page/View/customsWidgets/cuisines_filter.dart';
import 'package:vroom/src/features/presentation/filter_page/View/customsWidgets/list_tile_checked.dart';
import 'package:vroom/src/features/presentation/widgets/header_text.dart';

class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(top:  15.0, bottom: 15.0, left: 15.0),
                    child: headerText(
                      texto: 'CUISINES',
                      color: gris,
                      fontWeight: FontWeight.w600,
                      fontsize: 17.0
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: CuisinesFilter()),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top:  15.0, bottom: 15.0, left: 15.0),
                  child: headerText(
                      texto: 'SORT BY',
                      color: gris,
                      fontWeight: FontWeight.w600,
                      fontsize: 17.0
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: ListTileCheck()),
                ]
              )
          )
        ],
      ),
    );
  }
}

Widget _appBar(BuildContext context) {
  return AppBar(
    elevation: 0.5,
    backgroundColor: Colors.white,
    title: Container(
        padding: EdgeInsets.all(100),
        child: headerText(texto: 'Filters', fontWeight: FontWeight.w600)),
    leading:
        Container(
            padding: EdgeInsets.only(top: 20, left: 7.0),
            child: headerText(texto: 'Reset', fontWeight: FontWeight.w500, fontsize: 17.0)),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
            padding: EdgeInsets.only(top: 20, right: 10.0),
            child: headerText(texto: 'Done',
                color: orange,
                fontWeight: FontWeight.w500,
                fontsize: 17.0)),
      ),
    ],
  );
}
