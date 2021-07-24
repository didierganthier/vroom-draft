import 'package:flutter/material.dart';
import 'package:vroom/src/utils/Extentions/screen_size.dart';

class TextFieldProfileDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _createTextFieldEmail(context),
          _createTextFieldUsername(context),
          _createTextFieldPhone(context),
          _createTextFieldDateOfBirth(context),
          _createTextFieldDeliveryAdress(context)
        ],
      ),
    );
  }
}


Widget _createTextFieldUsername(BuildContext context) {
  return Container(
    width: screenHeight.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(hintText: 'Username', border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldEmail(BuildContext context) {
  return Container(
    width: screenHeight.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(hintText: 'Email', border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldPhone(BuildContext context) {
  return Container(
    width: screenHeight.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(hintText: 'Phone', border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldDateOfBirth(BuildContext context) {
  return Container(
    width: screenHeight.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.datetime,
        decoration: InputDecoration(hintText: 'Date of birth', border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}

Widget _createTextFieldDeliveryAdress(BuildContext context) {
  return Container(
    width: screenHeight.getScreenWidth(context: context, multiplier: 0.85),
    decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: TextField(
        keyboardType: TextInputType.text, maxLines: 3,
        decoration: InputDecoration(hintText: 'Delivery Address', border: OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    ),
  );
}