import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Mobile Screen',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
