import 'package:flutter/material.dart';
import 'package:flutter_application_examen/screen_views/examen_form_input.dart';

class ImcForm extends StatefulWidget {
  const ImcForm({super.key});

  @override
  State<ImcForm> createState() => _ImcFormState();
}

class _ImcFormState extends State<ImcForm> {
final pesoController = TextEditingController();
final alturaController = TextEditingController();
final imcController = TextEditingController();
double imc = 0;
String mensaje = '';
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
                controller: pesoController,
                hintText: 'Ingrese su peso', 
                labelText: 'Peso', 
                helperText: 'Valor numérico', 
                counterText: '', 
                prefixIcon: const Icon(Icons.arrow_right), 
                icon: const Icon(Icons.attach_money)),
              const SizedBox(height: 20),
              ExamenForm(
                controller: alturaController,
                hintText: 'Ingrese la medida de su altura', 
                labelText: 'Altura', 
                helperText: 'Valor numérico', 
                counterText: '', 
                prefixIcon: const Icon(Icons.arrow_right),
                icon: const Icon(Icons.exposure_plus_1_sharp)),
              const SizedBox(height: 20),
              ExamenForm(
                controller: imcController,
                enabled: false,
                hintText: '', 
                labelText: 'IMC', 
                helperText: '', 
                counterText: '', 
                prefixIcon: const Icon(Icons.arrow_right),
                icon: const Icon(Icons.currency_exchange_sharp )),
              const SizedBox(height: 20),
              IconButton(
                icon: const Icon(Icons.check_circle),
                onPressed: () {
                  setState(() {
                    imc = double.parse(pesoController.text)/(double.parse(alturaController.text)* double.parse(alturaController.text));
                  // imcController.text = imc.toString();

                  if(imc > 0 && imc <= 18.5 ){
                    mensaje = 'peso inferior al normal';
                  }
                  if(imc > 18.5 && imc <= 24.9){
                    mensaje = 'Peso normal';
                  }
                  if(imc > 24.9 && imc <= 29.9){
                    mensaje = 'Peso superior al normal';
                  }
                  else{
                    mensaje = 'Obesidad';
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