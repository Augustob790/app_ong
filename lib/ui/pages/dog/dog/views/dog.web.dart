import 'package:flutter/material.dart';

class DogPage extends StatelessWidget {
  const DogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cachorro"),
      ),
      body: const Center(
        child: Text("Tela cachorro"),
      ),
    );
  }
}
