import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/routes/app_router.dart';
import 'package:flutter_application_widgets/screens/listview1_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Home Screen'))),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(menuOptions[index].icon),
                title: Text(menuOptions[index].name),
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const ListView1Screen());
                  //Navigator.push(context, route);
                  Navigator.pushNamed(context, menuOptions[index].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}
