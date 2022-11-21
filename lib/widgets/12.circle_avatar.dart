import 'package:flutter/material.dart';
class circleavatar extends StatelessWidget {
  const circleavatar({super.key});

  // Yuvarlak avatar oluşturmaya yarayan widgettır. Bir resim dosyası veriyoruz ve o resim yuvarlak bir avatara dönüyor.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Circle Avatar')),
      ),
      body: Center(
        child: CircleAvatar(
          backgroundColor: Colors.amber,
          radius: 150,
          backgroundImage: NetworkImage('https://tinyurl.com/95ncjeuu'),
        )
      ),
    );
  }
}
