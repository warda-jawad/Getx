import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/utils/bindings.dart';

import 'Screen/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Introduction to Bindings ",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
      initialBinding: MyBinding(),
      // initialRoute: "/",
      // getPages: [
      //   GetPage(name: "/", page: () => HomePage()),
      // ],
    );
  }
}
