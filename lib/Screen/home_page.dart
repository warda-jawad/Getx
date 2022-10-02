import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Screen/screen_one.dart';
import 'package:getx/Screen/screen_two.dart';

import '../Local/local_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyLocalController controllerlang = Get.put(MyLocalController());
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage".tr),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              Get.to(() => ScreenOne());
            },
            child: Text("Screen one".tr),
          ),
          MaterialButton(
            onPressed: () {
              Get.to(() => ScreenTwo());
            },
            child: Text("Screen two".tr),
          ),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: Text(
              "Do you want to change language".tr,
              style: TextStyle(fontSize: 20, color: Colors.orange[800]),
            ),
          ),
          MaterialButton(
            color: Colors.grey,
            onPressed: () {
              controllerlang.changeLang("en");
            },
            child: Text(
              "English".tr,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.grey,
            onPressed: () {
              controllerlang.changeLang("ar");
            },
            child: Text(
              "Arabic".tr,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.orange[800],
            onPressed: () {
              Get.defaultDialog(
                  title: "Success",
                  content: Column(
                    children: [Text("Enter Username"), TextFormField()],
                  ),
                  titleStyle: TextStyle(color: Colors.orangeAccent),
                  actions: [
                    MaterialButton(
                      onPressed: () {},
                      child: Text("OK"),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text("Cancel"),
                    ),
                  ]
                  // textCancel: "Cancel",
                  // textConfirm: "Confirm",
                  // onConfirm: () {
                  //   print("Confirm");
                  // },
                  // onCancel: () {
                  //   print("Cancel");
                  // }
                  );
            },
            child: Text(
              "Show Dialog",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          MaterialButton(
            color: Colors.orange[800],
            onPressed: () {
              Get.snackbar("title snackbar", "How are you? ",
                  backgroundColor: Colors.red,
                  colorText: Colors.white,
                  borderColor: Colors.black,
                  borderRadius: 20,
                  titleText: const Text(
                    "title",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  messageText: const Text(
                    "Message Override ",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  borderWidth: 2);
            },
            child: const Text(
              "Show Snackbar",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
// Get Builder update required to rebuild

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Introduction to GetX"),
//         ),
//         body: Container(
//           margin: EdgeInsets.symmetric(horizontal: 10, vertical: 150),
//           child: Column(
//             children: [
//               GetBuilder<HomeController>(
//                   init: HomeController(),
//                   builder: (controller) => Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           IconButton(
//                               onPressed: () {
//                                 controller.increment();
//                               },
//                               icon: Icon(Icons.add)),
//                           Text("${controller.counter}"),
//                           IconButton(
//                               onPressed: () {
//                                 controller.decrement();
//                               },
//                               icon: Icon(Icons.minimize)),
//                         ],
//                       )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// GetX Stream

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Introduction to GetX"),
//         ),
//         body: Container(
//           margin: EdgeInsets.symmetric(horizontal: 10, vertical: 150),
//           child: Column(
//             children: [
//               GetX<HomeController>(
//                   init: HomeController(),
//                   builder: (controller) => Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           IconButton(
//                               onPressed: () {
//                                 controller.increment();
//                               },
//                               icon: Icon(Icons.add)),
//                           Text("${controller.counter.value}"),
//                           IconButton(
//                               onPressed: () {
//                                 controller.decrement();
//                               },
//                               icon: Icon(Icons.minimize)),
//                         ],
//                       )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Obs Stream

// class HomePage extends StatelessWidget {
//   HomePage({Key? key}) : super(key: key);
//   final HomeController controller = Get.put(HomeController());
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Introduction to GetX"),
//         ),
//         body: Container(
//           margin: EdgeInsets.symmetric(horizontal: 10, vertical: 150),
//           child: Column(
//             children: [
//               Obx(() => Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       IconButton(
//                           onPressed: () {
//                             controller.increment();
//                           },
//                           icon: Icon(Icons.add)),
//                       Text("${controller.counter.value}"),
//                       IconButton(
//                           onPressed: () {
//                             controller.decrement();
//                           },
//                           icon: Icon(Icons.minimize)),
//                     ],
//                   )),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
