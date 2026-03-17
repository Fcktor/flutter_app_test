
import 'package:flutter/material.dart';

//pages
import 'package:flutter_app_test/src/pages/welcome_page.dart';
import 'package:flutter_app_test/src/pages/login_page.dart';
import 'package:flutter_app_test/src/pages/forgot_password.dart';
import 'package:flutter_app_test/src/pages/sign_up_page.dart';
import 'package:flutter_app_test/src/tabs/tabs_page.dart';



final routes = <String, WidgetBuilder>{
  'welcome': (BuildContext context) => const WelcomePage(),
  'login': (BuildContext context) => const LoginPage(),
  'forgot-password': (BuildContext context) => const ForgotPassword(),
  'sign-up': (BuildContext context) => const SignUpPage(),
  'tabs': (BuildContext context) => const TabsPage()/*
  'filter': (BuildContext context) => const FilterPage(),
  'place-detail': (BuildContext context) => const PlaceDetailPage(),
  'profile-details': (BuildContext context) => const ProfileDetailsPage(),*/
};