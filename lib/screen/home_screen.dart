import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/router_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(  // WillPopScope depricated. android system 뒤로가기 기능 제어
      canPop: Navigator.of(context).canPop()      ,
      child: MainLayout(
        title: 'Home Screen',
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            child: const Text('Maybe Pop'),
          ),
          ElevatedButton(
            onPressed: () async {
              final result = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => RouterOneScreen(
                    number: 11,
                  ),
                ),
              );

              print("result = $result");
            },
            child: Text('Push'),
          ),
        ],
      ),
    );
  }
}
