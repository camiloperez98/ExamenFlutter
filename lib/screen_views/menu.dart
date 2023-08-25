import 'package:flutter/material.dart';
import 'package:flutter_application_examen/screen_views/dietas.dart';
import 'package:flutter_application_examen/screen_views/examen_form_calorias.dart';
import 'package:flutter_application_examen/screen_views/examen_form_contact.dart';
import 'package:flutter_application_examen/screen_views/examen_form_imc.dart';
import 'package:flutter_application_examen/screen_views/examen_form_presion.dart';
import 'package:flutter_application_examen/screen_views/rutinas.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget> [
        AppBar(
        title: const Text('Vida saludable',
            style: TextStyle(color: Colors.black, fontSize: 25,)),
        ),
       Card(
          child: Column(
              children: [
                ListTile(
                  title: const Text('Dietas', style: TextStyle(fontSize: 20, color: Colors.black)),
                  onTap: () {
                     final route = MaterialPageRoute(builder: (context) => const Dietas());
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
        ),
          Card(
          child: Column(
              children: [
                ListTile(
                  title: const Text('IMC', style: TextStyle(fontSize: 20, color: Colors.black)),
                  onTap: () {
                     final route = MaterialPageRoute(builder: (context) =>const ImcForm() );
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
        ),
         Card(
          child: Column(
              children: [
                ListTile(
                  title: const Text('Calorías', style: TextStyle(fontSize: 20, color: Colors.black)),
                  onTap: () {
                     final route = MaterialPageRoute(builder: (context) => const CaloriasForm());
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
        ),
         Card(
          child: Column(
              children: [
                ListTile(
                  title: const Text('Rutinas de ejercicio', style: TextStyle(fontSize: 20, color: Colors.black)),
                  onTap: () {
                     final route = MaterialPageRoute(builder: (context) => const Rutinas());
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
        ),
         Card(
          child: Column(
              children: [
                ListTile(
                  title: const Text('Presión arterial', style: TextStyle(fontSize: 20, color: Colors.black)),
                  onTap: () {
                     final route = MaterialPageRoute(builder: (context) => const PresionArtForm());
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
        ),
        Card(
          child: Column(
              children: [
                ListTile(
                  title: const Text('Contacto', style: TextStyle(fontSize: 20, color: Colors.black)),
                  onTap: () {
                     final route = MaterialPageRoute(builder: (context) => const ContactoForm());
                    Navigator.push(context, route);
                  },
                ),
              ],
            ),
        ),
      ],
    );
  }
}