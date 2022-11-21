import 'package:flutter/material.dart';

class listtile extends StatelessWidget {
  const listtile({super.key});

  // Elemanları daha iyi hizalamak ve daha iyi liste elemanları oluşturmak için kullanılır.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(title: const Center(child: Text('List Tile')),),
      body:  Center(
        child: ListTile(
          title:const Text('List Tile -> Liste Elemanı', style: TextStyle(color: Colors.white)),
          tileColor: Colors.orangeAccent,
          onTap: () {},
          leading: const Icon(Icons.person, color: Colors.white,),
          trailing: const Icon(Icons.menu, color: Colors.white)
        ),
      ),
    );
  }
}