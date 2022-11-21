import 'package:flutter/material.dart';

class alertdialog extends StatefulWidget {
  const alertdialog({super.key});

  @override
  State<alertdialog> createState() => _alertdialogState();
}

class _alertdialogState extends State<alertdialog> {

  // Hata, uyarı mesajlarını ekranda görüntülemek için kullanılır.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Alert Dialog')),
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              contentPadding: EdgeInsets.all(20),
              title: const Text('Alert Dialog'),
              content:const Text('This is a alert dialog message'),
              actions: [
                TextButton(onPressed: () {
                 Navigator.pop(context);
                }, child: const Text('Close'))
              ],
              
            );
          },);
        }, child: const Text('Show Alert Dialog')),
      ),
    );
  }
}