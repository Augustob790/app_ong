import 'package:flutter/material.dart';

class DogDetailsPage extends StatelessWidget {
  const DogDetailsPage(
      {Key? key, this.name, this.bredFor, this.image, this.description})
      : super(key: key);

  final String? name;
  final String? bredFor;
  final String? image;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name ?? ''),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 15),
              Text(name ?? '',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                child: SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.network(
                      image ?? '',
                      errorBuilder: (context, exception, stackTrace) =>
                          const Icon(Icons.error),
                    )),
              ),
              const SizedBox(height: 15),
              Text(bredFor ?? '',
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold)),
              const SizedBox(height: 15),
              Text(description ?? '', textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}
