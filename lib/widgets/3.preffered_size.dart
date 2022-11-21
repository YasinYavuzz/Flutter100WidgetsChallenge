import 'package:flutter/material.dart';

class prefferedsize extends StatelessWidget {
  const prefferedsize({super.key});

  // Appbar widgetıdır. appbar biçimlendirmeyi kolaylaştıran widgettır.
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80), 
        child: Container(

          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.redAccent,
              Colors.yellowAccent
            ])
          ),
          child: Center(child: Text('PreferredSize',style: TextStyle(color: Colors.white,fontSize: 40),)),
        ),
      ),
    );
  }
}