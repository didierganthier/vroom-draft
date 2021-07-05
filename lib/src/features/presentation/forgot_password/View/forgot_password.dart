import 'package:flutter/material.dart';
import 'package:vroom/src/features/presentation/widgets/alert_dialog.dart';
import 'package:vroom/src/features/presentation/widgets/back_button.dart';


class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => backButton(context, Colors.black),
        ),
        elevation: 0.0,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text(
                'Forgot Password',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Please enter your email address. You will receive a link to create a new password via email.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.0,
                  ),
                ),
              ),
              _emailInput(),
              _buttonLogin(context)
            ],
          ),
        ),
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Your Email',
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

Widget _buttonLogin(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    width: MediaQuery.of(context).size.width - 35,
    height: 45.0,
    child: RaisedButton(
      onPressed: () {
        showAlert(context, "assets/reset_pass.png", "Your password has been reset", "You'll shortly receive an email with a code to setup a new password", "Done", ()=> Navigator.pushNamed(context, 'login'));
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child: Text(
        'Send',
        style: TextStyle(
          color: Colors.white,
          fontSize: 17.0,
        ),
      ),
    ),
  );
}

