import 'package:flutter/material.dart';

import 'examen_form_input.dart';

class ContactoForm extends StatefulWidget {
  const ContactoForm({super.key});

  @override
  State<ContactoForm> createState() => _ContactoFormState();
}

class _ContactoFormState extends State<ContactoForm> {
  final nombreController = TextEditingController();
  final correoController = TextEditingController();
  final telefonoController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto', style: TextStyle(fontSize: 20, color: Colors.black54)),
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 140),
        child: Column(
          children: [
            const SizedBox(height: 20),
            ExamenForm(
                controller: nombreController,
                hintText: 'Ingrese su nombre', 
                labelText: 'nombre', 
                helperText: 'Valor numérico', 
                counterText: '', 
                prefixIcon: const Icon(Icons.arrow_right),
                icon: const Icon(Icons.exposure_plus_1_sharp)),
              const SizedBox(height: 20),
             ExamenForm(
                controller: correoController,
                hintText: 'Ingrese su correo', 
                labelText: 'correo', 
                helperText: '', 
                counterText: '', 
                prefixIcon: const Icon(Icons.arrow_right), 
                icon: const Icon(Icons.attach_money)),
              const SizedBox(height: 20),
              ExamenForm(
                controller: telefonoController,
                hintText: 'Ingrese su telefono', 
                labelText: 'telefono', 
                helperText: '', 
                counterText: '', 
                prefixIcon: const Icon(Icons.arrow_right),
                icon: const Icon(Icons.exposure_plus_1_sharp)),
              const SizedBox(height: 20),
              ElevatedButton(
      onPressed: () {
        setState(() {
          
        });
         
      },
      child: const SizedBox(
        width: 100,
        child: Center(
          child: Text('Enviar'),
        ),
        ),
    ),
  
          ],
        ),),
      ),
    );
  }
}