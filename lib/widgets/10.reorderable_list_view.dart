import 'package:flutter/material.dart';

class reorderablelistview extends StatefulWidget {
  reorderablelistview({super.key});

  @override
  State<reorderablelistview> createState() => _reorderablelistviewState();
}

class _reorderablelistviewState extends State<reorderablelistview> {
  // İçerideki itemların elemanlarını değiştirebildiğimiz listeler yapmamızı sağlar.
  final List<int> items = List.generate(
    30,
    (int index) => index,
  );
  // 0 ile 30 arasında bir int dizi oluşturmaya yarar.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('ReorderableListView')),
      ),
      body: ReorderableListView(
        children: List.generate(
            items.length,
            (index) => ListTile(
                  key: Key('$index'),
                  tileColor:
                      items[index].isOdd ? Colors.white12 : Colors.white30,
                  title: Text('Item ${items[index]}'),
                  trailing: const Icon(Icons.drag_handle_sharp),
                )),
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            // final int item = items.removeAt(oldIndex);
            // items.insert(newIndex, item);
            int item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
      ),
    );
  }
}
