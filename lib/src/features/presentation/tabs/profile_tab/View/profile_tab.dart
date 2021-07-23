import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/widgets/Headers/header_text.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
    SliverList(
    delegate: SliverChildListDelegate(
    [
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 1),
    child: Column(
    children: [
      _header(), _contentProfile()
    ],
    ),
    )
    ]
    )
    )
    ],
      )
    );
  }
}

Widget _header() {
  return Container(
    height: 250,
    color: bgGreyPage,
    padding: EdgeInsets.all(50),
    child: Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/profile.jpg'),
          radius: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  headerText(texto: 'Woodens Fanfan', fontsize: 20, fontWeight: FontWeight.w600),
                  IconButton(onPressed: () {}, icon: Icon(Icons.chevron_right, color: gris,))
                ],
              ),
            ),
            Container(
              height: 25,
              margin: EdgeInsets.only(left: 12.0),
              child: RaisedButton(
                onPressed: () {},
                color: rosa,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Image(
                        image: AssetImage('assets/crown.png'),
                      width: 16,
                      height: 16,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: headerText(texto: 'VIP Member', color: white, fontsize: 11),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget _contentProfile() {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.notifications,
            color: Colors.red,
          ),
          title: headerText(texto: 'Notifications', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        ListTile(
          leading: Icon(
            Icons.payment,
            color: Colors.blue,
          ),
          title: headerText(texto: 'Payment method', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        ListTile(
          leading: Image(
           image: AssetImage('assets/crown.png'),
            width: 29,
            height: 29,
            color: Colors.yellow,
          ),
          title: headerText(texto: 'History', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        ListTile(
          leading: Icon(
            Icons.qr_code,
            color: Colors.orange,
          ),
          title: headerText(texto: 'My promo code', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        SizedBox(height: 20,),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.black,
          ),
          title: headerText(texto: 'Settings', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        ListTile(
          leading: Icon(
            Icons.person_add_alt_1,
            color: Colors.green,
          ),
          title: headerText(texto: 'Invite Friends', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        ListTile(
          leading: Icon(
            Icons.help,
            color: Colors.brown,
          ),
          title: headerText(texto: 'Help center', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
        ListTile(
          leading: Icon(
            Icons.info,
            color: Colors.deepPurple,
          ),
          title: headerText(texto: 'About us', fontWeight: FontWeight.w400),
          trailing: Icon(Icons.chevron_right, color: gris,),
        ),
      ],
    ),
  );
}