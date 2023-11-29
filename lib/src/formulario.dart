import 'package:flutter/material.dart';

class Fomrulario extends StatefulWidget {
  const Fomrulario({super.key});

  @override
  State<Fomrulario> createState() => _FomrularioState();
}

class _FomrularioState extends State<Fomrulario> {
  final TextEditingController apellidosController = TextEditingController();
  // Controladores para los campos de texto
  final TextEditingController ciController = TextEditingController();

  final TextEditingController correoController = TextEditingController();
  final TextEditingController direccionController = TextEditingController();
  final TextEditingController nombresController = TextEditingController();
  // Variables para los radio buttons
  String selectedSexo = 'Masculino';

  // Variables para los checkboxes
  List<String> selectedTiposSangre = [];

  final TextEditingController telefonoController = TextEditingController();

  bool _americanExpress = false;
  bool _discover = false;
  bool _mastercard = false;
  bool _password = false;
  bool _visa = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Clientes'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('C.I.'),
              TextField(controller: ciController),
              SizedBox(height: 16.0),
              Text('Nombres Completos'),
              TextField(controller: nombresController),
              SizedBox(height: 16.0),
              Text('Apellidos Completos'),
              TextField(controller: apellidosController),
              SizedBox(height: 16.0),
              Text('Teléfono'),
              TextField(controller: telefonoController),
              SizedBox(height: 16.0),
              Text('Dirección'),
              TextField(controller: direccionController),
              SizedBox(height: 16.0),
              Text('Correo Electrónico'),
              TextField(controller: correoController),
              SizedBox(height: 16.0),
              Text('Sexo'),
              Row(
                children: [
                  Radio(
                    value: 'Masculino',
                    groupValue: selectedSexo,
                    onChanged: (value) {
                      setState(() {
                        selectedSexo = value.toString();
                      });
                    },
                  ),
                  Text('Masculino'),
                  Radio(
                    value: 'Femenino',
                    groupValue: selectedSexo,
                    onChanged: (value) {
                      setState(() {
                        selectedSexo = value.toString();
                      });
                    },
                  ),
                  Text('Femenino'),
                ],
              ),
              Divider(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  "Elije tu tipo de tarjeta",
                  style: TextStyle(fontSize: 30),
                ),
              ),
              CheckboxListTile(
                title: Text("Visa"),
                value: _visa,
                onChanged: (value) {
                  setState(() {
                    _visa = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("MasterCard"),
                value: _mastercard,
                onChanged: (value) {
                  setState(() {
                    _mastercard = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("AmercianExpress"),
                value: _americanExpress,
                onChanged: (value) {
                  setState(() {
                    _americanExpress = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Discover"),
                value: _discover,
                onChanged: (value) {
                  setState(() {
                    _discover = value!;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      // Realizar la lógica de guardar la información del usuario
                      print('Información del usuario:');
                      print('C.I.: ${ciController.text}');
                      print('Nombres: ${nombresController.text}');
                      print('Apellidos: ${apellidosController.text}');
                      print('Teléfono: ${telefonoController.text}');
                      print('Dirección: ${direccionController.text}');
                      print('Correo Electrónico: ${correoController.text}');
                      print('Sexo: $selectedSexo');
                    },
                    child: Text('Enviar'),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
