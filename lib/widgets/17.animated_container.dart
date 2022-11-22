import 'dart:math';

import 'package:flutter/material.dart';
class animatedcontainer extends StatefulWidget {
  const animatedcontainer({super.key});

  @override
  State<animatedcontainer> createState() => _animatedcontainerState();
}

class _animatedcontainerState extends State<animatedcontainer> {
  double heights = 250;
  double widths = 250;
  Color colors = Colors.red;
  
  // Container içerisindeki yaptığımız işlemleri animasyon olarak gösterir
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Animated Container')),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              heights += 50; 
              widths += 50;
              colors = Colors.primaries[Random().nextInt(Colors.primaries.length)];

            }); 
          },
          child: AnimatedContainer(
            width: widths,
            height: heights,
            decoration: BoxDecoration(
              color: colors,
            ),
            duration: const Duration(seconds: 1)),
        ),
      ),
    );
  }
}