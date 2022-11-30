
import 'package:flutter/material.dart';
class draggablescrollablesheet extends StatefulWidget {
  const draggablescrollablesheet({super.key});

  @override
  State<draggablescrollablesheet> createState() => _draggablescrollablesheetState();
}

class _draggablescrollablesheetState extends State<draggablescrollablesheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Draggable Scrollable Sheet')),
      ),
      body: DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) { 
          return Container( 
            color: Colors.orange,
            child: ListView.builder(
              controller: scrollController,
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('item $index'),
                );
              },),
          );
        },
      
      ),
    );
  }
}