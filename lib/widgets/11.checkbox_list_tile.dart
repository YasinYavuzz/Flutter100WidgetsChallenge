import 'package:flutter/material.dart';

class checkboxlisttile extends StatefulWidget {
  checkboxlisttile({super.key});

  @override
  State<checkboxlisttile> createState() => _checkboxlisttileState();
}

class _checkboxlisttileState extends State<checkboxlisttile> {
  // checkbox listeleri oluşturmaya yarar.
  bool? _isChecked = false;
  bool? _isChecked2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.3),
        appBar: AppBar(
          title: const Center(child: Text('CheckboxListTile')),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10),
              child: Center(
                child: CheckboxListTile(
                    title: Text('Checkbox list tile'),
                    tileColor: Colors.amber,
                    activeColor: Colors.black,
                    subtitle: Text('this is a subtitle'),
                    value:
                        _isChecked, // true false tıklanıp tıklanmadığı seçilip seçilmediği
                    onChanged: (value) => setState(() {
                          _isChecked = value;
                          print(_isChecked);
                        })),
              ),
            ),
            Center(
              child: CheckboxListTile(
                  title: Text('Checkbox list tile 2'),
                  tileColor: Colors.amber,
                  activeColor: Colors.black,
                  controlAffinity: ListTileControlAffinity.leading,
                  subtitle: Text('this is a subtitle 2'),
                  value:
                      _isChecked2, // true false tıklanıp tıklanmadığı seçilip seçilmediği
                  onChanged: (value) => setState(() {
                        _isChecked2 = value;
                        print(_isChecked2);
                      })),
            ),
          ],
        ));
  }
}
