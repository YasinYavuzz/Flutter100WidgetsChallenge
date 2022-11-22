import 'package:flutter/material.dart';
import 'widgets/21.date_range_picker.dart';
import 'widgets/22.dismissible_widget.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.black45),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Widgets100Challenge(),
    );
  }
}

class Widgets100Challenge extends StatefulWidget {
  const Widgets100Challenge({super.key});

  @override
  State<Widgets100Challenge> createState() => _Widgets100ChallengeState();
}

class _Widgets100ChallengeState extends State<Widgets100Challenge> {
  List gifs = [
    "assets/100widgetsgifs/1.MaterailBanner.gif",
    "assets/100widgetsgifs/2.TextButton.gif",
    "assets/100widgetsgifs/3.PreferredSize.gif",
    "assets/100widgetsgifs/4.SafeArea.gif",
    "assets/100widgetsgifs/5.ListTile.gif",
    "assets/100widgetsgifs/6.BottomSheet.gif",
    "assets/100widgetsgifs/7.LongPressDraggable.gif",
    "assets/100widgetsgifs/8.LayoutBuilder.gif",
    "assets/100widgetsgifs/9.InteractiveViewer.gif",
    "assets/100widgetsgifs/10.ReorderableListView.gif",
    "assets/100widgetsgifs/11.CheckboxListTile.gif",
    "assets/100widgetsgifs/12.CircleAvatar.gif",
    "assets/100widgetsgifs/13.AssetImage.gif",
    "assets/100widgetsgifs/14.CupertinoContextMenu.gif",
    "assets/100widgetsgifs/15.Table.gif",
    "assets/100widgetsgifs/16.AlertDialog.gif",
    "assets/100widgetsgifs/17.AnimatedContainer.gif",
    "assets/100widgetsgifs/18.Card.gif",
    "assets/100widgetsgifs/19.DatePicker.gif",
    "assets/100widgetsgifs/20.TimePicker.gif",
    "assets/100widgetsgifs/21.DateRangePicker.gif",
    "assets/100widgetsgifs/22.Dismissible.gif",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.withOpacity(0.3),
      appBar: AppBar(title:const Center(child:Text("Widgets 100 Challenge"))),
      body: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: gifs.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height-100,
              decoration: BoxDecoration(
                  border: Border.all(width: 4,color: Colors.black),
                  image: DecorationImage(image: AssetImage(gifs[index]),fit: BoxFit.cover),
                  color: Colors.red, borderRadius: BorderRadius.circular(25)),
            ),
          );
        },
      ),
    );
  }
}
