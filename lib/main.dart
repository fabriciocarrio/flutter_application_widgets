import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/routes/app_router.dart';
import 'package:flutter_application_widgets/screens/screens.dart';
import 'package:flutter_application_widgets/themes/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const ListView1Screen(),
        );
      },
      theme: AppThemes.themeLigth,
    );
  }
}
