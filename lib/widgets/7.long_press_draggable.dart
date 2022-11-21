import 'package:flutter/material.dart';

class longpressdraggable extends StatefulWidget {
  const longpressdraggable({super.key});

  @override
  State<longpressdraggable> createState() => _longpressdraggableState();
}

class _longpressdraggableState extends State<longpressdraggable> {
  Offset offset = Offset(200, 200);

  // Uzunca tıkladığımız widgetı ekranda istediğimiz gibi konumlandırmaya yarar. 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(title: const Center(child: Text('Long Press Draggable')),),
      body: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            Positioned(
              left: offset.dx,
              top: offset.dy,
              child: LongPressDraggable(
                feedback: Image.network('https://tinyurl.com/95ncjeuu',
                height: 200,
                color: Colors.orangeAccent,
                colorBlendMode: BlendMode.colorBurn,    
              ),
              child: Image.network('https://tinyurl.com/95ncjeuu',height: 200,),
              onDragEnd: (details) {
                setState(() {
                 double degisenDegerler = MediaQuery.of(context).size.height - constraints.maxHeight;
                  offset = Offset(details.offset.dx, details.offset.dy-degisenDegerler); 
                });
              },
            )
            )
          ],
        );
      },),
    );
  }
}