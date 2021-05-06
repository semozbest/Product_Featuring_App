import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/home/components/home_screen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product Featuring App',
      theme: ThemeData(
        scaffoldBackgroundColor: sBackgroundColor,
        primaryColor: sPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: sTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
