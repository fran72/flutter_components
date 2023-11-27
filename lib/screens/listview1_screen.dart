import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  final options = const [
    'megafull',
    'taraaaaan',
    'dsudisds',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('hola Fran'),
        ),
        body: ListView(
          children: [
            ...options
                .map(
                  (e) => ListTile(
                    leading: const Icon(Icons.access_alarm),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    title: Text(e),
                  ),
                )
                .toList()
          ],
        ));
  }
}
