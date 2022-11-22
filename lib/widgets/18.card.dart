import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class card extends StatelessWidget {
  const card({super.key});

  // Hazır kart yapıları oluşturmak için kullanılan widgettır.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Card')),
      ),
      body:  Center(
        child: Card(
          color: Colors.redAccent,
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisSize: MainAxisSize.min, // column içerisindeki widget kadar yer kaplar.
              children: [
                const Text('Card Widget',style: TextStyle(fontSize: 25,color: Colors.white),),
                TextButton(
                  
                  onPressed: () {
                  
                }, child: const Text('Text Button'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}