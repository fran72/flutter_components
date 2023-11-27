import 'package:flutter/material.dart';
import 'package:flutter_app_cap6/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'fran',
      'last_name': 'cisco',
      'email': 'fran@gmail.com',
      'password': 'fran72',
      'role': 'Admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('my appbar'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const SizedBox(height: 20),
                CustomInputField(
                    hintText: 'Nombre',
                    helperText: 'helper pasado',
                    formProperty: 'first_name',
                    formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(
                    hintText: 'Apellido',
                    formProperty: 'last_name',
                    formValues: formValues),
                const SizedBox(height: 50),
                CustomInputField(
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues),
                const SizedBox(height: 30),
                CustomInputField(
                    hintText: 'Contraseña',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues),
                const SizedBox(height: 30),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'data', child: Text('data')),
                    DropdownMenuItem(
                        value: 'superuser', child: Text('superuser')),
                    DropdownMenuItem(value: 'sayan', child: Text('sayan')),
                    DropdownMenuItem(
                        value: 'supersayan', child: Text('supersayan')),
                  ],
                  onChanged: (value) => {
                    formValues['role'] = value ?? 'Admin',
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // if (!myFormKey.currentState!.validate()) {
                    //   print('no valid');
                    // }
                    // print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Center(
                      child: Text('data'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
