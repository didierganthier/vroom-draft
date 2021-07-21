import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/widgets/Headers/header_double.dart';
import 'package:vroom/src/features/presentation/widgets/Headers/header_text.dart';
import 'package:vroom/src/features/presentation/widgets/backButtons/back_button.dart';

class PlaceDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: orange,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          label: headerText(texto: 'Anadir a la Cesta 95.40\$', color: Colors.white, fontWeight: FontWeight.w600, fontsize: 17.0)
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 410,
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
                      _promoButton(), _infoPlace(), _infoPlaceStats(), _offerBanner()
                    ],
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context){
              return backButton(context, Colors.white);
            }),
            actions: [
              Container(
                margin: EdgeInsets.all(10),
                child: Image(
                  color: Colors.white,
                  width: 28,
                  height: 28,
                  image: AssetImage('assets/shareB.png'),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                [
                 _headers(texto: 'Populars'),
                  _sliderCards(),
                  _headers(texto: 'Full Menu'),
                  _menuList(context),
                  _headers(texto: 'Reviews'),
                  _reviews(),
                  SizedBox(height: 150.0,)
                ]
              )
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

Widget _infoPlaceStats() {
  return Container(
    margin: EdgeInsets.only(top: 26.0),
    padding: EdgeInsets.symmetric(horizontal: 40.0),
    height: 70.0,
    decoration: BoxDecoration(
      border: Border(
        top: BorderSide(color: Colors.white),
        bottom: BorderSide(color: Colors.white)
      )
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 19.0,
                ),
                headerText(texto: '4.5', color: Colors.white, fontWeight: FontWeight.bold, fontsize: 15.0)
              ],
            ),
            headerText(texto: "351 Ratings", color: gris, fontWeight: FontWeight.w500, fontsize: 15.0),
          ],
        ),
        Container(
          height: 40.0,
          decoration: BoxDecoration(
            border: Border(right: BorderSide(color: Colors.white))
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.bookmark,
                  color: Colors.white,
                  size: 19.0,
                ),
                headerText(texto: '137K', color: Colors.white, fontWeight: FontWeight.bold, fontsize: 15.0)
              ],
            ),
            headerText(texto: "Favorites", color: gris, fontWeight: FontWeight.w500, fontsize: 15.0),
          ],
        ),
        Container(
          height: 40.0,
          decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white))
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.photo,
                  color: Colors.white,
                  size: 19.0,
                ),
                headerText(texto: '346', color: Colors.white, fontWeight: FontWeight.bold, fontsize: 15.0)
              ],
            ),
            headerText(texto: "Photo", color: gris, fontWeight: FontWeight.w500, fontsize: 15.0),
          ],
        ),
      ],
    ),
  );
}

Widget _offerBanner() {
  return Container(
    color: Color.fromRGBO(255, 237, 214, 1.0),
    padding: EdgeInsets.all(20),
    height: 90.0,
    child: Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerText(texto: 'New! Try Pickup', color: orange, fontWeight: FontWeight.bold,fontsize: 15.0),
            headerText(texto: 'Pickup on your time. Your order is  \n ready when you are', color: primaryColor, fontWeight: FontWeight.w400,fontsize: 13.0),
          ],
        ),
        Spacer(),
        RaisedButton(
          elevation: 0.5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: orange,
          onPressed: () {},
          child: headerText(texto: 'Order now', color: Colors.white, fontWeight: FontWeight.bold, fontsize: 13.0)
        )
      ],
    ),
  );
}

Widget _headers({ texto: String }) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20.0),
    padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: headerDoubleText(textHeader: texto, textAction: ''),
  );
}

Widget _sliderCards() {
   return Container(
    height: 210,
     padding: EdgeInsets.only(left: 20.0),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _cards();
        }
    ),
  );
}

Widget _cards() {
  return Container(
    margin: EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image(
            width: 200.0,
            height: 100.0,
            fit: BoxFit.cover,
            image: AssetImage('assets/salads.jpg'),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 10),
            child: headerText(texto: 'Salad plate', fontWeight: FontWeight.bold, fontsize: 15.0)),
        Container(
            alignment: Alignment.centerLeft,
            child: headerText(texto: '9.50 \$', fontWeight: FontWeight.w500, fontsize: 14.0, color: gris)),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: headerText(
                texto: "Selecciona",
                fontWeight: FontWeight.w500,
                fontsize: 15.0,
                color: orange
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 90),
              child: Image(
                width: 20.0,
                color: orange,
                height: 20.0,
                fit: BoxFit.cover,
                image: AssetImage('assets/plus_order.png'),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _menuList(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 10.0),
    child: Column(
      children: [
        _menuItem(context, 'Salads', '2'),
        _menuItem(context, 'Chicken', '5'),
        _menuItem(context, 'Soups', '6'),
        _menuItem(context, 'Vegetables', '7')
      ],
    ),
  );
}

Widget _menuItem(BuildContext context, String texto, String itemCount) {
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: gris))
    ),
    child: Column(
      children: [
        ListTile(
          title: headerText(texto: texto, fontWeight: FontWeight.w300,fontsize: 17.0),
          trailing:  headerText(texto: itemCount, fontWeight: FontWeight.w300,fontsize: 17.0),
        ),
        _sliderCards()
      ],
    ),
  );
}

Widget _reviews() {
  return Container(
    height: 135,
    padding: EdgeInsets.only(left: 10),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return _cardReviews();
        }
    ),
  );
}

Widget _cardReviews() {
  return Container(
    margin: EdgeInsets.only(top: 10),
    padding: EdgeInsets.only(top: 10),
    width: 350,
    child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                width: 49.0,
                height: 43.0,
                fit: BoxFit.cover,
                image: AssetImage('assets/dog.jpg'),
              ),
            )
          ],
        )
      ],
    ),
  );
}