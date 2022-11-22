import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<int> items = List.generate(30, (index) => index);
  
  // Oluşturmuş olduğumuz listenin itemlarını silmek için kullandığımız widgettır. Kullanabilmek için itemları bu widget ile sarıyoruz.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Dismissible')),
      ),
      body: ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.all(5),
        itemBuilder: (context, index) {
          return Dismissible(
            key: ValueKey<int>(items[index]),
            onDismissed: (DismissDirection direction) {
              setState(() {
                items.removeAt(index);
              });
            },
            background: Container(
                color: Colors.red,
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                )),
            child: ListTile(
              tileColor: const Color.fromARGB(255, 168, 132, 2),
              contentPadding: const EdgeInsets.all(10),
              title: Text('item  ${items[index]}'),
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: Colors.black, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          );
        },
      ),
    );
  }
}