import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/themes/app_theme.dart';
import 'package:flutter_application_widgets/widgets/widgets.dart';

import '../widgets/customcardtype1.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Card Screen")),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(height: 10),
            CustomCardType2(
                urlImage:
                    'https://img.freepik.com/free-vector/woman-scuba-diver-with-mask-meet-mermaid-water-sea-ocean-cartoon-illustration_107791-5908.jpg?t=st=1657578337~exp=1657578937~hmac=b65e1d71baaa1cf83682d55d7bf4513c1365e2c818c82d9c0e9af0b9bded47da&w=996',
                name: 'Fondo de mar'),
            SizedBox(height: 10),
            CustomCardType2(
              urlImage:
                  'https://img.freepik.com/free-vector/ancient-ruins-old-architecture-sunken-water-sea-ocean_107791-5276.jpg?t=st=1657578337~exp=1657578937~hmac=34ea6ca36bb21137648ee8dcd4c1f8a519aec01dbec2a77b607fe3d752c5a37d&w=996',
              name: 'Atlantis',
            ),
            SizedBox(height: 10),
            CustomCardType2(
              urlImage:
                  'https://img.freepik.com/free-vector/beautiful-witch-flying-broom-near-haunted-house-cartoon-illustration_107791-6787.jpg?t=st=1657578337~exp=1657578937~hmac=a222a82edde4cf891e5bb347c30bc49f889b68b81aabb00bcdd18cba3c964e8e&w=996',
            ),
            SizedBox(height: 100),
          ]),
    );
  }
}
