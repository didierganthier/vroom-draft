import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/filter_page/View/customsWidgets/cuisines_filter.dart';
import 'package:vroom/src/features/presentation/filter_page/View/customsWidgets/list_tile_checked.dart';
import 'package:vroom/src/features/presentation/filter_page/View/customsWidgets/price_filter.dart';
import 'package:vroom/src/features/presentation/widgets/header_text.dart';

class FilterPage extends StatefulWidget {
  FilterPage({Key key}) : super(key: key);
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  //SORT BY BOOLEANS
  bool topRated = false;
  bool nearMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;

  // FILTER BOOLEANS
  bool openNow = false;
  bool creditCards = false;
  bool alcoholServed = false;

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
                  margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
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
                  margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
                  child: headerText(
                      texto: 'SORT BY',
                      color: gris,
                      fontWeight: FontWeight.w600,
                      fontsize: 17.0
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        ListTileCheck(
                          texto: 'Top Rated',
                          isActive: topRated,
                          function: () {
                            setState(() => topRated = !topRated);
                          },
                        ),
                        ListTileCheck(
                          texto: 'Nearest Me',
                          isActive: nearMe,
                          function: () {
                            setState(() => nearMe = !nearMe);
                          },
                        ),
                        ListTileCheck(
                          texto: 'Cost High to Low',
                          isActive: costHighToLow,
                          function: () {
                            setState(() => costHighToLow = !costHighToLow);
                          },
                        ),
                        ListTileCheck(
                          texto: 'Cost Low to High',
                          isActive: costLowToHigh,
                          function: () {
                            setState(() => costLowToHigh = !costLowToHigh);
                          },
                        ),
                        ListTileCheck(
                          texto: 'Most Popular',
                          isActive: mostPopular,
                          function: () {
                            setState(() => mostPopular = !mostPopular);
                          },
                        ),
                      ],
                    )),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
                  child: headerText(
                      texto: 'FILTER',
                      color: gris,
                      fontWeight: FontWeight.w600,
                      fontsize: 17.0
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        ListTileCheck(
                          texto: 'Open Now',
                          isActive: openNow,
                          function: () {
                            setState(() => openNow = !openNow);
                          },
                        ),
                        ListTileCheck(
                          texto: 'Credit Cards',
                          isActive: creditCards,
                          function: () {
                            setState(() => creditCards = !creditCards);
                          },
                        ),
                        ListTileCheck(
                          texto: 'Alcohol Served',
                          isActive: alcoholServed,
                          function: () {
                            setState(() => alcoholServed = !alcoholServed);
                          },
                        ),
                      ],
                    )),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
                  child: headerText(
                      texto: 'PRICE',
                      color: gris,
                      fontWeight: FontWeight.w600,
                      fontsize: 17.0
                  ),
                ),
                PriceFilter()
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
