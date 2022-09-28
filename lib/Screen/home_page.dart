import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Screen/screen_one.dart';
import 'package:getx/Screen/screen_two.dart';

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
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: () {
              Get.to(() => ScreenOne());
            },
            child: const Text("Screen One"),
          ),
          MaterialButton(
            onPressed: () {
              Get.to(() => ScreenTwo());
            },
            child: const Text("Screen Two"),
          ),
        ],
      ),
    );
  }
}
