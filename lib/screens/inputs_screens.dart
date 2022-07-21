import 'package:flutter/material.dart';
import 'package:flutter_application_widgets/widgets/custom_input_field.dart';

class InputScreens extends StatelessWidget {
  final myKeyForm = GlobalKey<FormState>();

  InputScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inputs y Forms')),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: myKeyForm,
          child: Column(children: [
            CustomInputField(
              labelText: 'Nombre',
              hintText: 'Nombre de Usuario',
            ),
            SizedBox(height: 15),
            CustomInputField(
              labelText: 'Apellido',
              hintText: 'Apellido de Usuario',
            ),
            SizedBox(height: 15),
            CustomInputField(
              labelText: 'Email',
              hintText: 'ejemplo@gmail.com',
              keyboardtype: TextInputType.emailAddress,
            ),
            SizedBox(height: 15),
            CustomInputField(
              labelText: 'Contraseña',
              hintText: 'Contraseña de Usuario',
              obstureText: true,
            ),
            SizedBox(height: 15),
            ElevatedButton(
              child: const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text('Guardar'),
                  )),
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());

                if (!myKeyForm.currentState!.validate()) {
                  print('Formulario no valido');
                  return;
                }
              },
            ),
          ]),
        ),
      )),
    );
  }
}
