import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Screen'),
        actions: [
          Container(
            margin: EdgeInsets.all(5),
            child: CircleAvatar(
              child: Text('ST'),
              backgroundColor: Colors.green[800],
            ),
          )
        ],
      ),
      body: Center(
          child: CircleAvatar(
              maxRadius: 120,
              backgroundImage: NetworkImage(
                  'https://dam.smashmexico.com.mx/wp-content/uploads/2018/11/12133624/stan-lee-personajes-smahs-marvel.jpg'))),
    );
  }
}
