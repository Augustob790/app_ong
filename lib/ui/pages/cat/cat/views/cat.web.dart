import 'package:flutter/material.dart';

class CatPage extends StatelessWidget {
  const CatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gatos"),
      ),
      body: const Center(
        child: Text("Tela gato"),
      ),
    );
  }
}
