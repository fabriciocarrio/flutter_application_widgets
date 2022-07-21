import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        const ListTile(
          title: Text('Soy un titulo'),
          subtitle: Text(
              'estoy contento estoy contentoestoy contentoestoy contentoestoy contentoestoy contentoestoy contentoestoy contento'),
          leading: Icon(
            Icons.photo_album,
            color: AppThemes.primary,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Cancel"),
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Ok"),
              )
            ],
          ),
        )
      ]),
    );
  }
}
