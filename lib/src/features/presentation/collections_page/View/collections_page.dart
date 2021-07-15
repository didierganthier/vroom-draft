import 'package:flutter/material.dart';
import 'package:vroom/src/features/presentation/widgets/Headers/header_text.dart';
import 'package:vroom/src/features/presentation/widgets/backButtons/back_button.dart';

class CollectionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: headerText(texto: 'Collections', fontsize: 17),
            leading: Builder(builder: (BuildContext context){
              return backButton(context, Colors.black);
            }
            ),
          ),
          SliverPadding(
              padding: EdgeInsets.only(left: 30.0, right: 20.0),
            sliver: SliverGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _card(BuildContext context) {
  return GestureDetector(
      onTap: () {

      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              width: 165,
              height: 190,
              fit: BoxFit.cover,
              image: NetworkImage('https://images.unsplash.com/photo-1615719413546-198b25453f85?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2QlMjBkZWxpdmVyeXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')
            ),
          ),
          Container(
            width: 165,
            height: 190,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 1.3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 35, bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                headerText(texto: 'Asia', color: Colors.white,fontsize: 18, fontWeight: FontWeight.bold),
                headerText(texto: '128 Places', color: Colors.white,fontsize: 15, fontWeight: FontWeight.w300),
              ],
            ),
          )

        ],
      )
  );
}