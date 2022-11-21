import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class assetimage extends StatelessWidget {
  const assetimage({super.key});

  // içerisine girdiği widgetın şeklini alır. Ona uygulanmış olan biçimlendirmeleri alır.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Asset Image')),
      ),
      body: Center(child: Container(
        width: 300,
        height: 450,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.red,width: 10),
          color : Colors.red,
          image: DecorationImage(image: AssetImage('assets/100widgetsgifs/5.ListTile.gif'),fit: BoxFit.cover)
        ),
      ))
    );
  }
}