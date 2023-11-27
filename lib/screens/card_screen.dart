import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('data')),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: ListView(children: const [
            CustomCardType1(),
            CustomCardType2(
                imageURL:
                    'https://yt3.ggpht.com/tssYa7_lYBqqsuO_8d_BWeZd_XdHK5kn__joK1LJ1mdtQufoDEZw8aQColxtixzSlqwkhiip=s48-c-k-c0x00ffffff-no-rj'),
            CustomCardType2(
                name: 'hola Text',
                imageURL:
                    'https://yt3.ggpht.com/tssYa7_lYBqqsuO_8d_BWeZd_XdHK5kn__joK1LJ1mdtQufoDEZw8aQColxtixzSlqwkhiip=s48-c-k-c0x00ffffff-no-rj'),
          ]),
        ));
  }
}
