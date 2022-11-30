import 'package:flutter/material.dart';

class draggable extends StatefulWidget {
  const draggable({super.key});

  @override
  State<draggable> createState() => _draggableState();
}

class _draggableState extends State<draggable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Draggable')),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Draggable(
              // data: Colors.orangeAccent,
              feedback: Container(
                width: 150,
                height: 150,
                color: Colors.orangeAccent.withOpacity(0.5),
                child: const Center(child: Text('Box',style: TextStyle(
                  decoration: TextDecoration.none
                ),)),
              ),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(child: Text('Box'),),
              ),
              
            ),
          ],
        ),
      ),
    );
  }
}