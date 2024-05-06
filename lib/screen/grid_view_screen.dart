import 'package:classtest1/widget/button_widget.dart';
import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  const GridViewScreen({super.key});

  final String name = "Parash";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Parash"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 50,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(name.length, (index) {
          return MyButtonWidget(
            text: name[index],
          );
        }),
      ),
    );
  }
}
