import 'package:flutter/material.dart';
import 'package:flutter_app_cap6/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          leading: Icon(Icons.access_alarm, color: AppTheme.primary),
          title: Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text('data'),
          ),
          subtitle: Text(
              'Esto es un subtitulo para ver como quedan los margenes y los paddings de mi Card'),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
