import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mundo de los Gatos ',
      theme: ThemeData(
        primarySwatch: Color.fromARGB(255, 136, 194, 158),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenidos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              ' ¡Bienvenidos al mundo de los gatos! ',
              style: TextStyle(
                  color: Color.fromARGB(255, 243, 170, 221),
                  fontSize: 29,
                  fontWeight: FontWeight.bold),
            ),
                     
            Image.asset('assets/gatopeque.jpg'),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                          icon: Image.asset('assets/ojitos.jpg'),
                          title: const Center(
                              child: Text("Gatos hermosos",
                                  style: TextStyle(
                                      fontSize: 22, color: Color.fromARGB(255, 184, 107, 133)))),
                          backgroundColor:
                              const Color.fromARGB(255, 253, 242, 249),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          content: const Text(
                            "Todo lo que necesitas esta aqui",
                            textAlign: TextAlign.center,
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Tiendas de Gatos'),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(255, 243, 218, 197),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0, vertical: 20),
                                  minimumSize: Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                            ),
                          ],

                          /* actions: [
                      /* TextButton(
                        child: const Text("OK", textAlign: TextAlign.center,),
                        onPressed: () {
                          Navigator.of(context).pop();
                          }
                      ) */
                    
                    ], */
                        ));
              },
              label: const Text('Notificame'),
              icon: const Icon(BootstrapIcons.chat_square_heart),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.facebook),
            label: '@red_social',
          ),
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.menu_app),
            label: 'mascotas',
          ),
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.instagram),
            label: '@informacion',
          ),
        ],
      ),
    );
  }
}











































































































