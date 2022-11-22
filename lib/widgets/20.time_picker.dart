import 'package:flutter/material.dart';


class timepicker extends StatefulWidget {
  const timepicker({super.key});

  @override
  State<timepicker> createState() => _timepickerState();
}

class _timepickerState extends State<timepicker> {
  TimeOfDay selectedTime = TimeOfDay.now();

  // Saat uygulamasını açar ve istediğimiz saati seçmemizi sağlar.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Time Picker')),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${selectedTime.hour} : ${selectedTime.minute}',
              style: const TextStyle(color: Colors.white, fontSize: 25)),
          ElevatedButton(
              onPressed: () async {
                final time = await showTimePicker(
                    context: context, 
                    initialTime: selectedTime, 
                    // initialEntryMode: TimePickerEntryMode.dialOnly
                );
                if (time != null) {
                  setState(() {
                    selectedTime = time;
                  });
                }
              },
              child: const Text('Choose Time'))
        ],
      )),
    );
  }
}
