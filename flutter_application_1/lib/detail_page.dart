import 'package:flutter/material.dart';
import 'package:flutter_application_1/aktris.dart';

class DetailPage extends StatelessWidget {
  final Aktris artis;
  final Key? key; // Tambahkan parameter bernama 'key'

  DetailPage({required this.artis, this.key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(artis.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            textTitle(artis.name, Colors.black38),
            const SizedBox(height: 15),
            Image(
              image: AssetImage(artis.image),
            ),
            const SizedBox(height: 10),
            textAttribute("Born", artis.born),
            const SizedBox(height: 10),
            Text(
              artis.detail,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }

  Container textTitle(String value, Color bgColor) {
    return Container(
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(color: bgColor),
      child: Text(
        value,
        style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
    );
  }

  // Fixed typo in method name from textAtribute to textAttribute
  Container textAttribute(String label, String value) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 80,
            child: Text(
              "- $label",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const Text(":", style: TextStyle(fontSize: 18)),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
