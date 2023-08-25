import 'package:flutter/material.dart';
import 'package:flutter_application_examen/screen_views/examen_form_input.dart';


class CaloriasForm extends StatefulWidget {
  const CaloriasForm({super.key});

  @override
  State<CaloriasForm> createState() => _CaloriasFormState();
}

class _CaloriasFormState extends State<CaloriasForm> {
  final desayunoController = TextEditingController();
  final almuerzoController = TextEditingController();
  final cenaController = TextEditingController();
  final caloriasController = TextEditingController();
  final generoController = TextEditingController();
  double calorias = 0;
  String genero = '';
  String mensaje = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calorias', style: TextStyle(fontSize: 20, color: Colors.black54)),
      ),
      body:  SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 140),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // ExamenForm(
            //     controller: generoController,
            //     hintText: 'Ingrese su genero', 
            //     labelText: 'genero', 
            //     helperText: 'Valor numérico', 
            //     counterText: '', 
            //     prefixIcon: const Icon(Icons.arrow_right),
            //     icon: const Icon(Icons.exposure_plus_1_sharp)),
            //   const SizedBox(height: 20),
             ExamenForm(
                controller: desayunoController,
                hintText: 'Ingrese la cantidad de calorias del desayuno', 
                labelText: 'desayuno', 
                helperText: 'Valor numérico', 
                counterText: '', 
                prefixIcon: const Icon(Icons.arrow_right), 
                icon: const Icon(Icons.attach_money)),
              const SizedBox(height: 20),
              ExamenForm(
                controller: almuerzoController,
                hintText: 'Ingrese la cantidad de calorias del almuerzo', 
                labelText: 'almuerzo', 
                helperText: 'Valor numérico', 
                counterText: '', 
                prefixIcon: const Icon(Icons.arrow_right),
                icon: const Icon(Icons.exposure_plus_1_sharp)),
              const SizedBox(height: 20),
              ExamenForm(
                controller: cenaController,
                hintText: 'Ingrese la cantidad de calorias de la cena', 
                labelText: 'cena', 
                helperText: 'Valor numérico', 
                counterText: '', 
                prefixIcon: const Icon(Icons.arrow_right),
                icon: const Icon(Icons.exposure_plus_1_sharp)),
              const SizedBox(height: 20),
             ExamenForm(
                controller: caloriasController,
                enabled: false,
                hintText: '', 
                labelText: 'Total calorias', 
                helperText: '', 
                counterText: '', 
                prefixIcon: const Icon(Icons.arrow_right),
                icon: const Icon(Icons.currency_exchange_sharp )),
              const SizedBox(height: 20),
              
            //Text('consejo $mensaje'),
              const SizedBox(height: 20),
              ElevatedButton(
      onPressed: () {
        setState(() {
          calorias = double.parse(desayunoController.text)+double.parse(almuerzoController.text)+double.parse(cenaController.text);
                  caloriasController.text = calorias.toString();
                  generoController.text = genero;

                   if(calorias < 1600 && calorias <= 2000 ){
                    mensaje = 'Deficit calorico';
                  }
                  if(calorias > 2000 && calorias <= 2500 ){
                    mensaje = 'Consumo normal de calorias';
                  }
                  if(calorias > 2500){
                    mensaje = 'Consumo excesivo de calorias';
                  }
        });
         
      },
      child: const SizedBox(
        width: 100,
        child: Center(
          child: Text('Hombre'),
        ),
        ),
    ),
    Text('Estado: $mensaje', style: const TextStyle(fontSize: 18),),
     const SizedBox(height: 20),
              ElevatedButton(
      onPressed: () {
        setState(() {
           calorias = double.parse(desayunoController.text)+double.parse(almuerzoController.text)+double.parse(cenaController.text);
                  caloriasController.text = calorias.toString();
                  generoController.text = genero;
           if(calorias < 1600){
                    mensaje = 'Deficit calorico';
                  }
                  if(calorias > 1600 && calorias < 2000 ){
                    mensaje = 'Consumo normal de calorias';
                  }
                  if(calorias > 2000 ){
                    mensaje = 'Consumo excesivo de calorias';
                  }
        });
        
      },
      child: const SizedBox(
        width: 100,
        child: Center(
          child: Text('Mujer'),
        ),
        ),
    ),
    Text('Estado: $mensaje', style: const TextStyle(fontSize: 18),),
          ],
        ),),
      ),
    );
  }
}