import 'package:flutter/material.dart';

void showAlert(
    BuildContext context,
    String imagePath,
    String headerTitle,
    String headerSubtitle,
    String labelButton,
    Function doneButtonFunc) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.yellow[50],
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        content: Container(
          height: 400,
          child: Column(
            children: [
              Image(
                image: AssetImage(imagePath),
                width: 130,
                height: 130,
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  headerTitle,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  headerSubtitle,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                ),
              ),
              _doneButton(context, labelButton, doneButtonFunc),
            ],
          ),
        ),
      );
    },
  );
}

Widget _doneButton(
    BuildContext context, String labelButton, Function doneButtonFunc) {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    width: MediaQuery.of(context).size.width - 35,
    height: 45.0,
    child: RaisedButton(
      onPressed: doneButtonFunc,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child: Text(
        labelButton,
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.0,
        ),
      ),
    ),
  );
}
