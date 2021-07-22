import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/widgets/Cards/favourites_card.dart';
import 'package:vroom/src/features/presentation/widgets/Headers/header_text.dart';

class FavoritesTab extends StatefulWidget {
  @override
  _FavoritesTabState createState() => _FavoritesTabState();
}

class _FavoritesTabState extends State<FavoritesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Text(''),
            backgroundColor: white,
            title: headerText(texto: '                    My Favorites', color: primaryColor, fontsize: 17, fontWeight: FontWeight.w600),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
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
