import 'package:flutter/material.dart';
import 'package:vroom/src/pages/forgot_password.dart';
import 'package:vroom/src/pages/login_page.dart';

//Pages
import 'package:vroom/src/pages/welcome_screen.dart';

final routes = <String, WidgetBuilder>{
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot-password' : (BuildContext context) => ForgotPassword(),
};