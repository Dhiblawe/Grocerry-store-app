import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:grocerry_store_app/pages/OrderPage.dart';
import 'package:grocerry_store_app/pages/SplashScreen.dart';
import 'package:grocerry_store_app/pages/cartPage.dart';
import 'package:grocerry_store_app/pages/home.dart';
import 'package:grocerry_store_app/pages/itemPage.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  static final String title = 'setup Firebase';
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF7F5F8),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/" :(context) => SplashScreen(),
        "home" :(context) => Home(),
        "itemPage":(context) => itemPage(),
        "cartPage":(context) => CartPage(),
        "orderPage":(context) => OrderPage(),
      },
    );
   }
}