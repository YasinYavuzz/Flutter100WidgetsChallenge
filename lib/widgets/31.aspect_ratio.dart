import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class aspectratio extends StatefulWidget {
  const aspectratio({super.key});

  @override
  State<aspectratio> createState() => _aspectratioState();
}

class _aspectratioState extends State<aspectratio> {
  TextEditingController _controller = TextEditingController();
  String? _value;
  double? aspectRatioOne;
  double? aspectRatioTwo;
  double sonuc = 16/9;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('AspectRatio')),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            //keyboardType: TextInputType.number,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              hintText: 'Oranı girin (16/9)',
              hintStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.red
            ),
            onEditingComplete: () {
              setState(() {
                _value = _controller.text.toString();
                aspectRatioOne = double.parse(_value!.split('/').first);
                aspectRatioTwo = double.parse(_value!.split('/').last);
                sonuc = aspectRatioOne!/aspectRatioTwo!;
                print(aspectRatioOne);
                print(aspectRatioTwo);
              });
            },
          ),
          Container(
            color: Colors.orangeAccent,
            alignment: Alignment.center,
            width: double.infinity,
            height: 300,
            child: AspectRatio(
              child: Container(
                color: Colors.grey,
              ),
              aspectRatio: sonuc),
          ),
        ],
      ),
    );
  }
}