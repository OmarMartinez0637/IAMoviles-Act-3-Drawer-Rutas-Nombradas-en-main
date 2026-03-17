import 'package:flutter/material.dart';

class BebidasScreen extends StatelessWidget {
  const BebidasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bebidas Refrescantes - DQ')),
      drawer: const DQDrawer(),
      body: Center(
        child: Image.network(
          'https://raw.githubusercontent.com/OmarMartinez0637/Imagenes-Para-DairyQueen/refs/heads/main/cereza.JPG',
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class DQDrawer extends StatelessWidget {
  const DQDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // ENCABEZADO DEL NEGOCIO
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.red[700], // Color representativo de DQ
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    'https://raw.githubusercontent.com/OmarMartinez0637/Imagenes-Para-DairyQueen/refs/heads/main/Dairy_Queen_logo.svg.png',
                  ),
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 5),
                Text(
                  'Dairy Queen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Blvd. Tomás Fernández 1234', // Inventada
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  'Tel: (656) 555-0192', // Inventada
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  'contacto@dq-juarez.com', // Inventada
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
          // LISTILES DE NAVEGACIÓN
          ListTile(
            leading: const Icon(Icons.icecream, color: Colors.blue),
            title: const Text('Helados'),
            onTap: () {
              // Usamos pushReplacementNamed para no acumular pantallas infinitas
              Navigator.pushReplacementNamed(context, '/helados');
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_drink, color: Colors.orange),
            title: const Text('Bebidas'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/bebidas');
            },
          ),
          ListTile(
            leading: const Icon(Icons.cake, color: Colors.pink),
            title: const Text('Pasteles'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/pasteles');
            },
          ),
          ListTile(
            leading: const Icon(Icons.takeout_dining, color: Colors.green),
            title: const Text('Para llevar'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/llevar');
            },
          ),
        ],
      ),
    );
  }
}
