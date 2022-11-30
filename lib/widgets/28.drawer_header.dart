import 'package:flutter/material.dart';
class drawerHeader extends StatefulWidget {
  const drawerHeader({super.key});

  @override
  State<drawerHeader> createState() => _drawerHeaderState();
}

class _drawerHeaderState extends State<drawerHeader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Drawer Header')),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(left: 0,top: 30),
          children: [
            DrawerHeader(
              child: Text('Drawer Header',style: TextStyle(color: Colors.white),),
              decoration: BoxDecoration(
                color: Colors.blue
              ),
            ),
            ListTile(
              title: Text('data'),
              leading: CircleAvatar(),
            )
          ],
        ),
      ),
    );
  }
}