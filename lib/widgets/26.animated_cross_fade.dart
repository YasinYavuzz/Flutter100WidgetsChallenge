import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class animatedCrossFade extends StatefulWidget {
  const animatedCrossFade({super.key});

  @override
  State<animatedCrossFade> createState() => _animatedCrossFadeState();
}

class _animatedCrossFadeState extends State<animatedCrossFade> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Animated Cross Fade')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 100,
          ),
          TextButton(onPressed: () {
            setState(() {
              _bool = !_bool;
            });
          }, child: const Text('Değiştir')),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 500,
            child: AnimatedCrossFade(
              firstCurve: Curves.linear,
              secondCurve: Curves.bounceInOut,
              firstChild: Image.asset('assets/100widgetsgifs/24.Draggable.gif'), 
              secondChild: Image.asset('assets/100widgetsgifs/25.DragTarget.gif'),
              crossFadeState: _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond, 
              duration: const Duration(seconds: 5)),
          )
        ],
      ),

    );
  }
}