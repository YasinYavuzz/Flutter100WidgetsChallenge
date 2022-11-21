import 'package:flutter/material.dart';

class bottomsheet extends StatelessWidget {
  const bottomsheet({super.key});


  // Alttan açılabilir bir pencere oluşmasını sağlar.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(title: const Center(child: Text('Bottom Sheet')),),
      body:  Center(
        child: ElevatedButton(onPressed: () {
          showModalBottomSheet(
            context: context, 
            builder: (context) {
              return  SizedBox(
                height: 250,
                width: 250,
                child: Center(
                  child : ElevatedButton(onPressed: () {
                    Navigator.pop(context);
                  }, child: const Text('Close Bottom Sheet'))
              ));
            },
          );
        }, child: const Text('Bottom Sheet')),
      ),
    );
  }
}