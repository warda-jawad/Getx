import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx/Local/local.dart';
import 'package:getx/Local/local_controller.dart';
import 'package:getx/utils/bindings.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Screen/home_page.dart';

SharedPreferences? sharepref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharepref = await SharedPreferences.getInstance();
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyLocalController controller = Get.put(MyLocalController());
    return GetMaterialApp(
      title: "Introduction to Bindings ",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      locale: controller.inialang,
      translations: MyLocal(),
      home: HomePage(),
      initialBinding: MyBinding(),
      initialRoute: "/",
      // getPages: [
      //   GetPage(name: "/", page: () => HomePage()),
      // ],
    );
  }
}
