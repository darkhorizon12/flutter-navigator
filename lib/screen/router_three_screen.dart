import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';

class RouterThreeScreen extends StatelessWidget {
  const RouterThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)?.settings.arguments;
    return MainLayout(
      title: 'Router Three Page',
      children: [
        Text(
          'push named arguments is $arguments',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('Pop'),
        ),
      ],
    );
  }
}
