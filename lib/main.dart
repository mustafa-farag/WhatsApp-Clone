import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constants/colors.dart';
import 'package:responsive_whatsapp_clone/responsive/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp Responsive',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: backgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: appBarColor,
        ),
      ),
      home: const Responsive(),
    );
  }
}
