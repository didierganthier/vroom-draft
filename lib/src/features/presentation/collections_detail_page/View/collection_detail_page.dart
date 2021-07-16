import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/widgets/Cards/favourites_card.dart';
import 'package:vroom/src/features/presentation/widgets/Cards/populares_card.dart';
import 'package:vroom/src/features/presentation/widgets/Headers/header_text.dart';
import 'package:vroom/src/features/presentation/widgets/backButtons/back_button.dart';

class CollectionDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(

            backgroundColor: orange,
            expandedHeight: 230,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                      width: double.infinity,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/asianfood.jpg')),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                    child: headerText(texto: 'Asia  \n  Restaurant', color: Colors.white, fontWeight: FontWeight.bold,
                    fontsize: 35.0,
                    textAlign: TextAlign.center),
                  )
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context){
              return backButton(context, Colors.white);
            }
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.symmetric(vertical: 20.0),
                          child: headerText(texto: '128 places', color: Color.fromRGBO(51, 58, 77, 1.0),
                          fontWeight: FontWeight.w600,
                            fontsize: 17
                          ),
                        ),
                        Column(
                          children: [
                            favouritesCard(
                              image: AssetImage('assets/favorite1.jpg'),
                              title: "Andy & Cindy's Diner",
                              subtitle: 'Petion-ville',
                              review: "4.8",
                              ratings: "(233 ratings)",
                              buttonText: 'Delivery',
                              hasActionButton: true,
                              isFavourite: true,
                            ),
                            favouritesCard(
                              image: AssetImage('assets/favorite1.jpg'),
                              title: "Andy & Cindy's Diner",
                              subtitle: 'Petion-ville',
                              review: "4.8",
                              ratings: "(233 ratings)",
                              buttonText: 'Delivery',
                              hasActionButton: true,
                              isFavourite: false,
                            ),
                          ],
                        )
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
