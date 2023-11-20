import 'package:flutter/material.dart';
import 'package:flutter_application_1/aktris.dart';
import 'package:flutter_application_1/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aktris Indonesia',
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("List Aktris"),
          ),
          body: HomePage(
            listAktris: Aktris.dummyData,
          ),
        ));
  }
}
