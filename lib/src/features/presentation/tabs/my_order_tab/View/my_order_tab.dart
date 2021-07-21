import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/tabs/my_order_tab/View/components/empty_view.dart';
import 'package:vroom/src/features/presentation/widgets/Headers/header_text.dart';

class MyOrdersTab extends StatefulWidget {
  @override
  _MyOrdersTabState createState() => _MyOrdersTabState();
}

class _MyOrdersTabState extends State<MyOrdersTab> {
  final emptyOrderState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      body: emptyOrderState ? EmptyOrderView() : CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0.5,
            leading: Text(''),
            backgroundColor: white,
            title: headerText(texto: 'My Order', color: primaryColor, fontsize: 17, fontWeight: FontWeight.w600,),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        _orders(context)
                      ],
                    ),
                  )
                ]
              )
          )
        ],
      ),
    );
  }
}

Widget  _orders(BuildContext context) {
  return Column(
    children: [
      _cardOrders(context)
    ],
  );
}

Widget _cardOrders(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color.fromRGBO(248, 248, 248, 1.0),
      boxShadow: [
        BoxShadow(
          color: Color.fromRGBO(218, 211, 215, 1.0),
          spreadRadius: 1.0,
          blurRadius: 4.0
        )
      ]
    ),
    child: Column(
      children: [
        Row(
          children: [
            _cardOrderTopContent()
          ],
        )
      ],
    ),
  );
}

Widget _cardOrderTopContent() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 7.0, bottom: 7.0, right: 20.0),
          child: headerText(
            texto: "Little Creatures - Club Street",
            fontsize: 20.0,
            fontWeight: FontWeight.bold
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_on, color: gris, size: 16.0,),
              headerText(texto: "87 Botsford Circle Apt", color: gris, fontWeight: FontWeight.w500, fontsize: 13.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                width: 110.0,
                height: 20.0,
                child: RaisedButton(
                  elevation: 0.5,
                  shape: StadiumBorder(),
                  color: orange,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: headerText(texto: 'Free Delivery', fontsize: 11),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}