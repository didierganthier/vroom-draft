import 'package:flutter/material.dart';
import 'package:vroom/src/colors/colors.dart';
import 'package:vroom/src/features/presentation/widgets/Headers/header_text.dart';

class EmptyOrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        elevation: 0.5,
        leading: Text(''),
        backgroundColor: white,
        title: headerText(texto: 'My Order', color: primaryColor, fontsize: 17, fontWeight: FontWeight.w600,),

      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 216,
                height: 216,
                image: AssetImage('assets/cart.png'),
              ),
              Container(
                  margin: EdgeInsets.only(top: 30),
                  child: headerText(texto: 'Cart Empty', color: gris, fontsize: 25, fontWeight: FontWeight.bold)),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 50),
                child: headerText(texto: 'Good food is always cooking! Go ahead, order some yummy items from the menu', textAlign: TextAlign.center, color: gris,fontsize: 17, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
