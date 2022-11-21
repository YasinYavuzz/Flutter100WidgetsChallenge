import 'package:flutter/material.dart';

class safearea extends StatelessWidget {
  const safearea({super.key});

  // Ekranlarımızın her tarafı kare şeklinde değil yani yazdığımız widgetlar ekranda istediğimiz şekilde görünmeyebilir. SafeArea widgetı bunu önler.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: Column(
        children: [
          Text('SafeArea Yokken',style: TextStyle(color: Colors.white,fontSize: 20),),
          SafeArea(child: Text('SafeArea Varken',style: TextStyle(color: Colors.white,fontSize: 20))),
        ]
      ),
    );
  }
}