import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  //método de acción en dispositivos iOS
  void showCupertinoDialogIO(BuildContext context){
    showCupertinoDialog(
      context: context, 
      builder: (context){
      return CupertinoAlertDialog(
        title: const Text('Alerta Importante'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Esta es una alerta para iOS'),
            SizedBox(height: 10),
            FlutterLogo()
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), 
          child: const Text('Aceptar'))
        ],
      );
    });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(context: context, builder: (context) =>  AlertDialog(
      title: const Text('Alerta de mensaje'),
      content: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Text('¡Esto es el contenido interno de la alerta!'),
        SizedBox(height: 10),
        FlutterLogo(size: 100)
      ],
      ),
      actions: [
        TextButton(
        onPressed: () => Navigator.pop(context), 
        child: const Text ('Cancelar', style: TextStyle(fontSize: 18)))
      ],
    )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: ()=> showCupertinoDialogIO(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text('Procesar',
                  style: TextStyle(color: Colors.white, fontSize: 25)),
            )),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.cloud_sync), onPressed: () {}),
    );
  }
}