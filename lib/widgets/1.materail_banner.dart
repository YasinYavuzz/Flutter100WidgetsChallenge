import 'package:flutter/material.dart';

class materialbanner extends StatelessWidget {
  const materialbanner({super.key});

  // AppBar kısmından pop-up çıkarmaya yarayan widgettır.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Text('MaterialBanner'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(
                padding: const EdgeInsets.all(8.0),
                content: const Text('Subscribe!'),
                leading: const Icon(
                  Icons.notifications_active_outlined,
                ),
                elevation: 5,
                backgroundColor: Color.fromARGB(255, 70, 173, 84),
                actions: <Widget>[
                  TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).clearMaterialBanners();
                      },
                      child: const Text('Dismiss',style: TextStyle(color: Colors.white),))
                ],
              ),
            );
          },
          child: const Text('Open'),
        ),
      ),
    );
  }
}
