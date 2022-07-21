import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);
  final options = const ['Boca', 'River', 'Racing', 'Independiente'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView(children: [
        ...options
            .map((equipo) => ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title: Text(equipo),
                ))
            .toList()
      ]),
    );
  }
}
