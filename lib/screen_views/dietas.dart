import 'package:flutter/material.dart';

class Dietas extends StatelessWidget {
  const Dietas({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget> [
        AppBar(
        title: const Text('Dietas saludables',
            style: TextStyle(color: Colors.black, fontSize: 25,)),
        ),
        Card(
            child: Column(
              children: [
                Image.network('data:image/jpeg;base64,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', height: 250,width: 400),
                const ListTile(
                  title:  Text('Desayuno', style: TextStyle(fontSize: 20, color: Colors.black)),
                  subtitle: Text('Pan integral con palta -café con leche o té/anís'),
                ),
              ],
            ),
        ),
        Card(
            child: Column(
              children: [
                Image.network('data:image/jpeg;base64,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', height: 100,width: 100),
                const ListTile(
                  title:  Text('Almuerzo', style: TextStyle(fontSize: 20, color: Colors.black)),
                  subtitle: Text('Ensalada de tomate con queso fresco - arroz integral con garbanzos y pollo a la plancha'),
                ),
              ],
            ),
        ),
         Card(
            child: Column(
              children: [
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbEsC5M0YMkBPWxZr5vp7uPCdtG-sOWi13bQ&usqp=CAU', height: 250,width: 400),
                const ListTile(
                  title:  Text('Cena', style: TextStyle(fontSize: 20, color: Colors.black)),
                  subtitle: Text('Caldo de verduras'),
                ),
              ],
            ),
        ),
      ],
     );
  }
}