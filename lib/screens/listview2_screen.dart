import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);
  final options = const ['Boca', 'River', 'Racing', 'Independiente'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 2'),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.indigo,
          ),
          onTap: () => print("presionando $index"),
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
