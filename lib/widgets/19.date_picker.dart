import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class datepicker extends StatefulWidget {
  const datepicker({super.key});

  @override
  State<datepicker> createState() => _datepickerState();
}

class _datepickerState extends State<datepicker> {
  DateTime selectedDate = DateTime.now();
  
  // Takvimi açmak için kullanılır.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Date Picker')),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              '${selectedDate.year} - ${selectedDate.month} - ${selectedDate.day}',
              style: const TextStyle(color: Colors.white, fontSize: 25)),
          ElevatedButton(
              onPressed: () async {
                final DateTime? dateTime = await showDatePicker(
                    context: context,
                    initialDate: selectedDate,
                    firstDate: DateTime(1970),
                    lastDate: DateTime(3100));
                if (dateTime != null) {
                  setState(() {
                    selectedDate = dateTime;
                  });
                }
              },
              child: const Text('Choose Date'))
        ],
      )),
    );
  }
}
