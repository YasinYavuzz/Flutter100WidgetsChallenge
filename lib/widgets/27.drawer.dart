import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class drawer extends StatefulWidget {
  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Drawer')),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
            return const ListTile(
              title: Text('listtile'),
              leading: CircleAvatar(),
            );
          },),
        )
      ),
      body: Column(
        mainAxisAlignment : MainAxisAlignment.center,
        children: [
          
          Builder(
            builder: (context) {
              return Center(child: ElevatedButton(onPressed: () {
                Scaffold.of(context).openDrawer();
              }, child: Text('Open Drawer')),);
            }
          ),
          Builder(
            builder: (context) {
              return Center(child: ElevatedButton(onPressed: () {
                Scaffold.of(context).openEndDrawer();
              }, child: Text('Open EndDrawer')),);
            }
          ),
        ],
      ),
      endDrawer: Drawer(
        child: SafeArea(
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
            return const ListTile(
              title: Text('listtile'),
              leading: CircleAvatar(),
            );
          },),
        )
      ),
    );
  }
}