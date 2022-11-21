import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class cupertinocontextmenu extends StatefulWidget {
  const cupertinocontextmenu({super.key});

  @override
  State<cupertinocontextmenu> createState() => _cupertinocontextmenuState();
}

class _cupertinocontextmenuState extends State<cupertinocontextmenu> {

  // Sarıldığı widgeta tıklandığında odaklanır ve oluşturmuş olduğumuz menü kadar altında seçenek çıkar.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Cupertino Context Menu')),
      ),
      body: Center(
        child: Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: CupertinoContextMenu(
              child: Image.network('https://www.pabsec.org/depo/news/congratulations-to-our-host-country-republic-of-turkey-on-the-occasion-of-the-96th-anniversary-of-th-oy1.jpg'),
              actions: [
                CupertinoContextMenuAction(child: Text('Action One'),onPressed: () {
                  Navigator.pop(context);
                },),
                CupertinoContextMenuAction(child: Text('Action Two'),onPressed: () {
                  Navigator.pop(context);
                },)
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}