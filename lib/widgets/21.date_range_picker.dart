import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class daterangepicker extends StatefulWidget {
  const daterangepicker({super.key});

  @override
  State<daterangepicker> createState() => _daterangepickerState();
}

class _daterangepickerState extends State<daterangepicker> {
  
  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now()
  );

  // Seçtiğimiz tarihler arasındaki farkı verir.
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Date Range Picker')),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('${selectedDates.duration.inDays} ', // yukarıda girilmiş iki zaman arasındaki günlerin farkı
              style: const TextStyle(color: Colors.white, fontSize: 25)),
          ElevatedButton(
              onPressed: () async {
                final DateTimeRange? dateTimeRange = await showDateRangePicker(
                  context: context, 
                  firstDate: DateTime(2000), 
                  lastDate: DateTime(3000)
                );
                if (dateTimeRange != null) {
                  setState(() {
                    selectedDates = dateTimeRange;
                  });
                }
              },
              child: const Text('Choose Dates'))
        ],
      )),
    );
  }
}