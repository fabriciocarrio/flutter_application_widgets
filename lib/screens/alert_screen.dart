import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/routes/app_router.dart';
import 'package:flutter_application_widgets/themes/app_theme.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(50)),
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              )
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Cancel'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alert Screen')),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: ElevatedButton(
          child: const Text(
            'Mostrar Alerta',
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {
            displayDialog(context);
          },
        ),
      )),
    );
  }
}
