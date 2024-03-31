import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/router_two_screen.dart';

class RouterOneScreen extends StatelessWidget {
  final int? number;

  const RouterOneScreen({this.number, super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Router One Page',
      children: [
        Text(
          number.toString(),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(number);
          },
          child: Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(
              MaterialPageRoute(
                builder: (_) => RouterTwoScreen(),
                settings: RouteSettings(
                  arguments: 777,
                ),
              ),
            );
          },
          child: Text('Go to 2Page'),
        ),
      ],
    );
  }
}
