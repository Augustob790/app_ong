import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
          children: const [
            UserAccountsDrawerHeader(
                accountName: Text("Augusto Batista de jesus"),
                accountEmail: Text("augusto@yahoo.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.0,
                  // backgroundImage: NetworkImage(
                  //     'http://www.macoratti.net/imagens/pessoas/mac.jpg'),
                  backgroundColor: Colors.black,
                )),
            ListTile(
              leading: Icon(Icons.catching_pokemon_outlined),
              title: Text("Gatos"),
              subtitle: Text("Adote os gatos aqui"),
              trailing: Icon(Icons.arrow_forward),
              // onTap: () {
              //   debugPrint('toquei no drawer');
              // }),
            ),
            ListTile(
              leading: Icon(Icons.catching_pokemon_outlined),
              title: Text("Cachorro"),
              subtitle: Text("Adote os cachorros aqui"),
              trailing: Icon(Icons.arrow_forward),
              // onTap: () {
              //   debugPrint('toquei no drawer');
              // }),
            ),
            ListTile(
              leading: Icon(Icons.archive_outlined),
              title: Text("Sobre"),
              trailing: Icon(Icons.arrow_forward),
              // onTap: () {
              //   debugPrint('toquei no drawer');
              // }),
            ),
            SizedBox(
              height: 200,
            ),
            ListTile(
              title: Text("Logout"),

              trailing: Icon(Icons.logout),
              // onTap: () {
              //   debugPrint('toquei no drawer');
              // }),
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
