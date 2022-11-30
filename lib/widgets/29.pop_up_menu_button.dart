import 'package:flutter/material.dart';


class popUpMenuButton extends StatefulWidget {
  const popUpMenuButton({super.key});

  @override
  State<popUpMenuButton> createState() => _popUpMenuButtonState();
}

class _popUpMenuButtonState extends State<popUpMenuButton> {
  String title = "Item";
  String item1 = "First Item";
  String item2 = "Second Item";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('PopUpMenuButton')),
      ),
      body: ListTile(
        title: Text(title,style: const TextStyle(color: Colors.white),),
        trailing: PopupMenuButton(
          icon: const Icon(Icons.more_vert_outlined,color: Colors.white,),
          color: Colors.red,
          itemBuilder: (context) => [
            PopupMenuItem(
              value: item1,
              child: Text(item1),
            ),
            PopupMenuItem(
              value: item2,
              child: Text(item2),
            ),
          ],
          onSelected: ((value) => setState(() {
            title = value;
          })),
        ),
      ),
    );
  }
}