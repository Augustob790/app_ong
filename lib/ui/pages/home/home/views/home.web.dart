import 'package:app_ong/ui/components/components.dart';
import 'package:flutter/material.dart';
import '../../home.controller.dart';
import '../../home.presenter.dart';
import 'package:get/get.dart';

class HomePage extends GetViewCP<HomeController, HomePresenter> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anjo de Quatro Patas"),
      ),
      body: const Center(
        child: Text("Tela Home"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Text("Augusto Batista de jesus"),
                accountEmail: Text("augusto@yahoo.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  // backgroundImage: NetworkImage(
                  //     'http://www.macoratti.net/imagens/pessoas/mac.jpg'),
                  backgroundColor: Colors.black,
                )),
            ListTile(
                leading: const Icon(Icons.catching_pokemon_outlined),
                title: const Text("Gatos"),
                subtitle: const Text("Adote os gatos aqui"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Get.toNamed('/cat');
                }),
            ListTile(
                leading: const Icon(Icons.catching_pokemon_outlined),
                title: const Text("Cachorro"),
                subtitle: const Text("Adote os cachorros aqui"),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Get.toNamed('/dog');
                }),
            const ListTile(
              leading: Icon(Icons.archive_outlined),
              title: Text("Sobre"),
              trailing: Icon(Icons.arrow_forward),
              // onTap: () {
              //   debugPrint('toquei no drawer');
              // }),
            ),
            const SizedBox(
              height: 200,
            ),
            ListTile(
              title: const Text("Logout"),
              trailing: const Icon(Icons.logout),
              onTap: () async {
                bool saiu = await controller.verificarSair();
                if (saiu) {
                  controller.sair();
                }
              },
            )
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
