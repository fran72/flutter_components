import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  final options = const [
    'megafullsccs',
    'taraaaaan',
    'dsudisds',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('hola Fran'),
          elevation: 0,
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.yellow,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.indigo,
          ),
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            leading:
                const Icon(Icons.access_alarm_outlined, color: Colors.indigo),
            title: Text(options[index]),
            trailing:
                const Icon(Icons.arrow_forward_ios_sharp, color: Colors.indigo),
            onTap: () => {},
          ),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
