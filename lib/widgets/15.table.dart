import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class table extends StatelessWidget {
  const table({super.key});

  // Tablo oluşturmamıza yarayan widgettır. Scroll özelliği için singleChildScrollView ile sarıyoruz.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      appBar: AppBar(
        title: const Center(child: Text('Table')),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Table(
              border: TableBorder.all(width: 1, color: Colors.white60),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                const TableRow(
                    decoration: BoxDecoration(color: Colors.redAccent),
                    children: [
                      TableCell(
                          //verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Title 1'),
                      )),
                      TableCell(
                          //verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Title 2'),
                      )),
                      TableCell(
                          //verticalAlignment: TableCellVerticalAlignment.middle,
                          child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text('Title 3'),
                      )),
                    ]),
                ...List.generate(
                    20,
                    (index) =>  const TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 196, 149, 9)
                      ),
                      children: [
                          TableCell(
                            child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Cell 0'),
                          )),
                          TableCell(
                              child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Cell 1'),
                          )),
                          TableCell(
                              child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Cell 2'),
                          ))
                        ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
