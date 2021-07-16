import 'package:flutter/material.dart';
import 'package:vroom/src/features/presentation/widgets/Cards/vertical_card.dart';
import 'package:vroom/src/features/presentation/widgets/Headers/header_double.dart';
import 'package:vroom/src/features/presentation/widgets/Headers/header_text.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:vroom/src/features/presentation/widgets/Cards/populares_card.dart';
import '../../../../colors/colors.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.black,
                size: 40.0,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(top: 20.0),
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Search',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        )),
                    _searchInput(context),
                    SizedBox(
                      height: 40.0,
                    ),
                    headerDoubleText(
                      textHeader: 'Recent search',
                      textAction: 'Clear All',
                    ),
                    _sliderRecentSearch(),
                    SizedBox(height: 20,),
                    headerDoubleText(textHeader: 'Recommend for you', textAction: ''),
                    popularesCard(context, 'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 40.0,
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(
      left: 5.0,
    ),
    decoration: BoxDecoration(
        color: Color.fromRGBO(142, 142, 147, 1.2),
        borderRadius: BorderRadius.circular(20.0)),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5.0),
          prefixIcon: Icon(
            Icons.search,
            color: gris,
          ),
          hintText: 'Search',
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sliderRecentSearch() {
  return Container(
    margin: EdgeInsets.only(top: 5.0),
    height: 190.0,
    child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext context, int index) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return cardVertical(
                    context: context,
                    width: 160.0,
                    height: 120.0,
                    title: "Portofino Restaurent",
                    subtitle: "30, Rue Goulard, Place Boyer",
                    image: NetworkImage("https://images.unsplash.com/photo-1615719413546-198b25453f85?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2QlMjBkZWxpdmVyeXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")
                );
              });
        }),
  );
}
