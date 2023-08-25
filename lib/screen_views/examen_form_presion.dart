import 'package:flutter/material.dart';

import 'examen_form_input.dart';

class PresionArtForm extends StatefulWidget {
  const PresionArtForm({super.key});

  @override
  State<PresionArtForm> createState() => _PresionArtFormState();
}

class _PresionArtFormState extends State<PresionArtForm> {
  final presionController = TextEditingController();
  String mensaje = '';
  double presion = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Indice Masa Corporal', style: TextStyle(fontSize: 20, color: Colors.black54)),
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 140),
        child: Column(
          children: [
            const SizedBox(height: 20),
             ExamenForm(
                controller: presionController,
                hintText: 'Ingrese su presion arterial', 
                labelText: 'presion', 
                helperText: 'Valor numérico', 
                counterText: '', 
                prefixIcon: const Icon(Icons.arrow_right), 
                icon: const Icon(Icons.attach_money)),
              const SizedBox(height: 20),
              IconButton(
                icon: const Icon(Icons.check_circle),
                onPressed: () {
                  setState(() {
                    presionController.text = presion.toString();
                    if(presion < 120){
                      mensaje = 'presion normal';
                    }
    
                    if(presion > 120 && presion <= 129){
                      mensaje = 'Presion arterial alta';
                    }
                    if(presion > 130 && presion <= 179){
                      mensaje = 'Presion arterial alta - riesgo cardiaco';
                    }
                    else{
                      mensaje = 'Presion arterial peligrosamante alta';
                    }
                  });
                  
                },
                iconSize: 50,
              ),
              Text('Estado: $mensaje', style: const TextStyle(fontSize: 20),)
          ],
        ),),
      ),
    );
  }
}