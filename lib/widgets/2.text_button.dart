import 'package:flutter/material.dart';

class textbutton extends StatefulWidget {
  textbutton({super.key});

  @override
  State<textbutton> createState() => _textbuttonState();
}


class _textbuttonState extends State<textbutton> {
  int counter = 0;

  // Tıklanabilir textler oluşturmaya yarar.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(title: Center(child: Text('Text Button')),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(onPressed: () {
              setState(() {
                counter++;
              });
            }, child: Text('Arttır',style: TextStyle(fontSize: 50),)),
            Text(counter.toString(),style: const TextStyle(color: Colors.black,fontSize: 50),)
          ],
        ),
      ),
    );
  }
}