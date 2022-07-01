import 'package:flutter/material.dart';

class Web extends StatelessWidget {
  const Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Web Screen',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
