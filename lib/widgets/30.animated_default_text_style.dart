import 'package:flutter/material.dart';
class animateddefaulttextstyle extends StatefulWidget {
  const animateddefaulttextstyle({super.key});

  @override
  State<animateddefaulttextstyle> createState() => _animateddefaulttextstyleState();
}

class _animateddefaulttextstyleState extends State<animateddefaulttextstyle> {
  bool _bool = true;
  double _fontSize = 90;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Animated Default Text Style')),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 300,
              child: AnimatedDefaultTextStyle(duration: Duration(seconds: 2), 
              style: TextStyle(color: _color,fontSize: _fontSize,fontWeight: FontWeight.bold),
              child: Text('Data',textAlign: TextAlign.center,),),
            ),
            TextButton(onPressed: () {
              setState(() {
                _bool = !_bool;
                _color = _bool ? Colors.blue : Colors.red;
                _fontSize = _bool ? 90 : 120;
              });
            }, child: Text('Tıkla'))
          ],
        ),
      ),
    );
  }
}