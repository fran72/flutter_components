import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({super.key, this.name, required this.imageURL});

  final String imageURL;
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      shadowColor: Colors.black.withOpacity(0.8),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(imageURL),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(seconds: 1),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding:
                  const EdgeInsets.only(top: 10.0, bottom: 10.0, right: 10.0),
              child: Text(name ?? 'no title'),
            )
        ],
      ),
    );
  }
}
