import 'package:flutter/material.dart';
import '../screens/mobile_screen.dart';
import '../screens/web_screen.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constrains) {
      if (constrains.maxWidth > 700) {
        return const Web();
      } else {
        return const Mobile();
      }
    });
  }
}
