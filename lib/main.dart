import 'package:flutter/material.dart';
import 'package:myapp/LasPaginas/bebidas.dart';
import 'package:myapp/LasPaginas/helados.dart';
import 'package:myapp/LasPaginas/parallevar.dart';
import 'package:myapp/LasPaginas/pasteles.dart';

void main() {
  runApp(const DairyQueenApp());
}

class DairyQueenApp extends StatelessWidget {
  const DairyQueenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dairy Queen',
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
      ),
      // --- RUTAS NOMBRADAS DEFINIDAS EXCLUSIVAMENTE AQUÍ ---
      initialRoute: '/helados',
      routes: {
        '/helados': (context) => const HeladosScreen(),
        '/bebidas': (context) => const BebidasScreen(),
        '/pasteles': (context) => const PastelesScreen(),
        '/llevar': (context) => const ParaLlevarScreen(),
      },
    );
  }
}

// ==========================================
// WIDGET DEL DRAWER (Reutilizable)
// ==========================================
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
