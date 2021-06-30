import 'package:flutter/material.dart';

//Pages
import 'package:vroom/src/pages/forgot_password.dart';
import 'package:vroom/src/pages/login_page.dart';
import 'package:vroom/src/pages/sign_up_page.dart';
import 'package:vroom/src/pages/welcome_screen.dart';
import 'package:vroom/src/tabs/tabs_page.dart';

final routes = <String, WidgetBuilder>{
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot-password' : (BuildContext context) => ForgotPassword(),
  'sign-up' : (BuildContext context) => SignUpPage(),
  'tabs' : (BuildContext context) => TabsPage(),
};