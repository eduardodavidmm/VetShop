import 'package:flutter/material.dart';
import 'package:vetshop/src/login/login_page.dart';
import 'package:vetshop/src/register/register_page.dart';
import 'package:vetshop/src/utils/my_colors.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VetShop Delivery',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login' : (BuildContext context) => LoginPage(),
        'register' : (BuildContext context) => RegisterPage()
      },
      theme: ThemeData(
        fontFamily: 'Futura',
        primaryColor: MyColors.primaryColor
      ),
    );
  }
}
