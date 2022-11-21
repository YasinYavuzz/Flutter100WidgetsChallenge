import 'package:flutter/material.dart';

class interactivviewer extends StatelessWidget {
  const interactivviewer({super.key});

  // Uygulama içerisindeki elemanı istediğimiz gibi oynatabilmeyi sağlar. Aynı zamanda zoom yapabilmeyi sağlar.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(title: const Center(child: Text('Interactive Viewer')),),
      body: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(double.infinity),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Image.network('https://tinyurl.com/5n97bfvp')
        ),
      ),
    );
  }
}