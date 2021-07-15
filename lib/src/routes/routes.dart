import 'package:flutter/material.dart';
import 'package:vroom/src/features/presentation/collections_page/View/collections_page.dart';
import 'package:vroom/src/features/presentation/filter_page/View/filter_page.dart';

//Pages
import 'package:vroom/src/features/presentation/forgot_password/View/forgot_password.dart';
import 'package:vroom/src/features/presentation/login_page/VIew/login_page.dart';
import 'package:vroom/src/features/presentation/search_page/view/searchView.dart';
import 'package:vroom/src/features/presentation/sign_up_page/VIew/sign_up_page.dart';
import 'package:vroom/src/features/presentation/tabs/tabs_page.dart';
import 'package:vroom/src/features/presentation/welcome_page/VIew/welcome_screen.dart';


final routes = <String, WidgetBuilder>{
  'welcome' : (BuildContext context) => WelcomePage(),
  'login' : (BuildContext context) => LoginPage(),
  'forgot-password' : (BuildContext context) => ForgotPassword(),
  'sign-up' : (BuildContext context) => SignUpPage(),
  'tabs' : (BuildContext context) => TabsPage(),
  'search' : (BuildContext context) => SearchPage(),
  'filter' : (BuildContext context) => FilterPage(),
  'collections' : (BuildContext context) => CollectionsPage(),
};