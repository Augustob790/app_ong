import 'package:app_ong/ui/pages/cat/cat/views/cat.web.dart';
import 'package:app_ong/ui/pages/dog/dog/views/dog.web.dart';
import 'package:app_ong/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'di/di.dart';
import 'ui/pages/home/home/views/home.web.dart';
import 'ui/pages/login/login/views/login.web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
      home: const SplashScreenPage(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const SplashScreenPage(),
          children: [
            GetPage(
              name: '/home',
              page: () => const HomePage(),
            ),
            GetPage(
              name: '/login',
              page: () => const LoginPage(),
            ),
            GetPage(
              name: '/cat',
              page: () => const CatPage(),
            ),
            GetPage(
              name: '/dog',
              page: () => const DogPage(),
            ),
          ],
        )
      ],
    );
  }
}
