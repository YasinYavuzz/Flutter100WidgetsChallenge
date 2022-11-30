import 'dart:math';
import 'package:flutter/material.dart';

class dragTarget extends StatefulWidget {
  const dragTarget({super.key});

  @override
  State<dragTarget> createState() => _dragTargetState();
}

class _dragTargetState extends State<dragTarget> {
  Color colors = Colors.orangeAccent;
  String text = "boş";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Drag Target')),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Draggable(
              data: Colors.primaries[Random().nextInt(Colors.primaries.length)], // bu onAccept metodunu gidecek
              onDraggableCanceled: (velocity, offset) {
                
              },
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
            DragTarget(
              onAccept: (Color data) {
                setState(() {
                  colors = data;//Colors.green;
                });
              },
              builder: (BuildContext context,List<dynamic> accepted,List<dynamic> rejected) {
                return Container(
                  width: 200,
                  height: 200,
                  color: accepted.isEmpty ? colors : Colors.grey.shade200,
                  child: Center(child: Text('$text')),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}