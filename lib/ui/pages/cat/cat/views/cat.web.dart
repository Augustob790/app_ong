import 'package:app_ong/data/models/models.dart';
import 'package:app_ong/ui/components/helpers/getviewcp.dart';
import 'package:app_ong/ui/pages/cat/cat/widgets/cat.page.dart';
import 'package:flutter/material.dart';
import '../../cat.dart';

class CatPage extends GetViewCP<CatController, CatPresenter> {
  const CatPage({Key? key, cat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Gatos"),
      // ),
      body: FutureBuilder<dynamic>(
        future: presenter.getAllCat(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var items = snapshot.data as List<CatModel>;
            return ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CatDetailsPage(
                          name: items[index].name,
                          temperament: items[index].temperament,
                          image: items[index].image?.url,
                          description: items[index].description,
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 5,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: 50,
                              height: 50,
                              child: Image.network(
                                items[index].image?.url ?? '',
                                errorBuilder:
                                    (context, exception, stackTrace) =>
                                        const Icon(Icons.error),
                              )),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8),
                                      child: Text(items[index].name ?? '',
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold))),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8),
                                    child: Text(items[index].temperament ?? ''),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("${snapshot.hasError}"));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
