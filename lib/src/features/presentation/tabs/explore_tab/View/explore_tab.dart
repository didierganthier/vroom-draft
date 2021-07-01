import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:vroom/src/colors/colors.dart';

class ExploreTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      _topBar(context),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Discover new places',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30.0,
                          ),
                        ),
                      ),
                      _sliderCards(),
                      _headers(context, 'Popular this week', 'Show all'),
                      _populares(context, 'https://images.unsplash.com/photo-1458642849426-cfb724f15ef7?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fGZvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
                      _headers(context, 'Collections', "Show all"),
                      _slidersCollections(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: MediaQuery.of(context).size.width / 1.4,
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(246, 236, 239, 1.0),
            ),
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 20.0,
              color: gris,
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text(
                'Search',
                style: TextStyle(
                  color: gris,
                  fontSize: 17.0,
                ),
              ),
            )
          ],
        ),
      ),
      Spacer(),
      Container(
        width: 40.0,
        height: 40.0,
        margin: EdgeInsets.only(right: 5.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(209, 209, 214, 1.0),
            borderRadius: BorderRadius.circular(50.0)),
        child: IconButton(
          icon: Icon(
            Icons.filter_list,
            size: 25,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    ],
  );
}

Widget _sliderCards() {
  return Container(
    height: 350,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (context, index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return _tarjeta(context);
          },
        );
      },
    ),
  );
}

Widget _tarjeta(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            imageUrl:
                'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Zm9vZHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
            fit: BoxFit.cover,
            height: 250,
            width: 200,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Pizza Garden',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                '36 Chavannes, Petion-Ville',
                style: TextStyle(
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                  fontWeight: FontWeight.w500,
                  fontSize: 13.0,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: amarillo,
                  size: 16,
                ),
                Text(
                  "4.8",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0,
                  ),
                ),
                Text(
                  ' (233 ratings)',
                  style: TextStyle(
                    color: gris,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  width: 80.0,
                  height: 18.0,
                  child: RaisedButton(
                    elevation: 0.5,
                    shape: StadiumBorder(),
                    color: Theme.of(context).accentColor,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      'Delivery',
                      style: TextStyle(fontSize: 11.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: Text(
          textHeader,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
      ),
      Row(
        children: [
          Text(
            textAction,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 15.0,
            ),
          ),
          Icon(Icons.play_arrow)
        ],
      )
    ],
  );
}

Widget _populares(BuildContext context, String imageUrl) {
  return ListView.builder(
    itemCount: 4,
    itemExtent: 100,
    scrollDirection: Axis.vertical,
    physics: NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemBuilder: (context, index) {
      return Container(
        height: 300,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: CachedNetworkImage(
                height: 80,
                width: 80,
                fit: BoxFit.cover,
                imageUrl: imageUrl,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7.0),
                    child: Text(
                      "Pizza Garden",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      '36 Chavannes, Petion-Ville',
                      style: TextStyle(
                        color: gris,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: amarillo,
                        size: 16,
                      ),
                      Text(
                        "4.8",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                        ),
                      ),
                      Text(
                        ' (233 ratings)',
                        style: TextStyle(
                          color: gris,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        width: 80.0,
                        height: 18.0,
                        child: RaisedButton(
                          elevation: 0.5,
                          shape: StadiumBorder(),
                          color: Theme.of(context).accentColor,
                          textColor: Colors.white,
                          onPressed: () {},
                          child: Text(
                            'Delivery',
                            style: TextStyle(fontSize: 11.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}

Widget _slidersCollections(){
  return Container(
    height: 350,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (context, index) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return _tarjetaCollection(context);
          },
        );
      },
    ),
  );
}

Widget _tarjetaCollection(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(8.0),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            fit: BoxFit.cover,
            height: 200,
            width: 280,
            imageUrl: 'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
          ),
        ),
      ],
    ),
  );
}