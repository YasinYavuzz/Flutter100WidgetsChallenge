import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class autocomplete extends StatefulWidget {
  const autocomplete({super.key});

  @override
  State<autocomplete> createState() => _autocompleteState();
}

class _autocompleteState extends State<autocomplete> {
  List<String> fruits = ['banana','apple','melon'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Auto Complete')),
      ),
      body: Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
          if (textEditingValue.text == '') {
            return const Iterable<String>.empty();
          }
          return fruits.where((String item) => item.contains(textEditingValue.text.toLowerCase()));
        },
        onSelected: (String item) {
          print(item);
        },
      ),
    );
  }
}