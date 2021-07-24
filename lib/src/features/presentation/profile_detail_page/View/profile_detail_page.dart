import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/profile_detail_page/View/components/avatar_view.dart';
import 'package:vroom/src/features/presentation/profile_detail_page/View/components/textfields_view.dart';
import 'package:vroom/src/features/presentation/widgets/Headers/header_text.dart';
import 'package:vroom/src/features/presentation/widgets/backButtons/back_button.dart';
import 'package:vroom/src/utils/Extentions/screen_size.dart';
import 'package:vroom/src/utils/style/box_decoration_shadows.dart';

class ProfileDetailPage extends StatefulWidget {
  @override
  _ProfileDetailPageState createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        title: headerText(texto: '                     Edit Profile', fontsize: 17),
        backgroundColor: white,
        elevation: 0.4,
        leading: Builder(builder: (BuildContext context) {
          return backButton(context, Colors.black);
        }
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 15.0),
              child: headerText(
                texto: 'Done',
                color: orange,
                fontWeight: FontWeight.w500,
                fontsize: 17.0
              ),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(
           [
             Container(
               margin: EdgeInsets.only(top: screenHeight.getScreenHeight(context: context, multiplier: 0.1), left: 15, right: 15),
               decoration: createBoxDecorationWithShadows(),
               width: screenWidth.getScreenWidth(context: context),
               height: screenHeight.getScreenHeight(context: context, multiplier: 0.90),
               child: Column(
                 children: [
                   Transform.translate(
                       offset: Offset(0, -60),
                       child: AvatarView(backgroundImage: 'https://images.unsplash.com/photo-1466112928291-0903b80a9466?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1053&q=80')),
                   TextFieldProfileDetailView()
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
