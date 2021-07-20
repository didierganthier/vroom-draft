import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/widgets/Headers/header_text.dart';

class PlaceDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 395,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                      width: double.infinity,
                      height: 350,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/place1.jpg')
                  ),
                  Container(
                    decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1.5)),
                    width: double.infinity,
                    height: 350,
                  ),
                  Wrap(
                    children: [
                      _promoButton(), _infoPlace()
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _promoButton() {
  return Container(
    margin: EdgeInsets.only(top: 121.0, left: 30.0, right: 15.0),
    width: double.infinity,
    height: 25,
    child: Row(
      children: [
        RaisedButton(
          elevation: 0.5,
          onPressed: () {},
          shape: StadiumBorder(),
          child: headerText(texto: 'Free Delivery', color: Colors.white, fontsize: 12.0),
          color: orange,
        )
      ],
    ),
  );
}

Widget _infoPlace() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        margin: EdgeInsets.symmetric(vertical: 7.0),
        child: headerText(
            texto: "Stake Eggs & Brocoli With Sauce",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          fontsize: 30.0
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: [
            Icon(Icons.location_on, color: gris,),
            headerText(
                texto: "Pizza Garden",
                color: gris,
                fontWeight: FontWeight.w500,
                fontsize: 15.0
            ),
          ],
        ),
      ),
    ],
  );
}