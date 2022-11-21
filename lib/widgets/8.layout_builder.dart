import 'package:flutter/material.dart';

class layoutbuilder extends StatelessWidget {
  const layoutbuilder({super.key});

  // Ekranın boyutuna göre tasarım yapmamıza yarayan widgettır. İçerisindeki widgetların boyutuna göre tasarım yapmamızı sağlar.


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(title: const Center(child: Text('Layout Builder')),),
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxWidth > 600){ // içerisindeki widgetın genişliği 600'den büyükse
          return Center(
            child: Image.network('https://tinyurl.com/5n97bfvp'),
          );
        }
        else{
          return const Center(child: Text('Genişlik 600\' den küçük ',style: TextStyle(color: Colors.white,fontSize: 25),));
        }
      },),
    );
  }
}