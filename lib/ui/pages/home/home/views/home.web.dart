import 'package:app_ong/ui/components/components.dart';
import 'package:app_ong/ui/pages/cat/cat/views/cat.web.dart';
import 'package:app_ong/ui/pages/dog/dog/views/dog.web.dart';
import 'package:flutter/material.dart';
import '../../home.controller.dart';
import '../../home.presenter.dart';

class HomePage extends GetViewCP<HomeController, HomePresenter> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("ONG")),
            // leading: IconButton(
            //   onPressed: () async {
            //     bool saiu = await controller.verificarSair();
            //     if (saiu) {
            //       controller.sair();
            //     }
            //   },
            //   icon: const Icon(Icons.logout),
            // ),
            actions: [
              IconButton(
                onPressed: () async {
                  bool saiu = await controller.verificarSair();
                  if (saiu) {
                    controller.sair();
                  }
                },
                icon: const Icon(Icons.logout),
              )
            ],
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Cachorro'),
                Tab(text: 'Gato'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              DogPage(),
              CatPage(),
            ],
          ),
        ),
      );
}
