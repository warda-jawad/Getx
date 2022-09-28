import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Controller/rebuild_controller.dart';

// GetBuilder - Can call more than one GetBuilder and just one time calling the controller if all of them use same controller.
// when call any of these get builder, it will update all of them
// class RebuildPage extends StatelessWidget {
//   const RebuildPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("ReBuild Page"),
//         ),
//         body: Container(
//           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 200),
//           child: Column(
//             children: [
//               Center(
//                 child: GetBuilder<RebuildController>(
//                   init: RebuildController(), // call it just once
//                   builder: (controller) {
//                     return Text(
//                       "${controller.count1}",
//                       style: TextStyle(fontSize: 20),
//                     );
//                   },
//                 ),
//               ),
//               Center(
//                 child: GetBuilder<RebuildController>(
//                   // init: RebuildController(), No Need
//                   builder: (controller) {
//                     return Text(
//                       "${controller.count2}",
//                       style: TextStyle(fontSize: 20),
//                     );
//                   },
//                 ),
//               ),
//               Center(
//                 child: GetBuilder<RebuildController>(
//                   // init: RebuildController(), No Need
//                   builder: (controller) {
//                     return Text(
//                       "${controller.sum()}",
//                       style: TextStyle(fontSize: 20, color: Colors.blue),
//                     );
//                   },
//                 ),
//               ),
//               Center(
//                 child: GetBuilder<RebuildController>(
//                   // init: RebuildController(), No Need
//                   builder: (controller) {
//                     return MaterialButton(
//                       onPressed: () {
//                         controller.incrementOne();
//                       },
//                       child: Text("Add number one"),
//                     );
//                   },
//                 ),
//               ),
//               Center(
//                 child: GetBuilder<RebuildController>(
//                   // init: RebuildController(), No Need
//                   builder: (controller) {
//                     return MaterialButton(
//                       onPressed: () {
//                         controller.incrementTwo();
//                       },
//                       child: Text("Add number two"),
//                     );
//                   },
//                 ),
//               ),
//               Center(
//                 child: GetBuilder<RebuildController>(
//                   // init: RebuildController(), No Need
//                   builder: (controller) {
//                     return MaterialButton(
//                       onPressed: () {
//                         controller.decrementOne();
//                       },
//                       child: Text("Sub number one"),
//                     );
//                   },
//                 ),
//               ),
//               Center(
//                 child: GetBuilder<RebuildController>(
//                   // init: RebuildController(), No Need
//                   builder: (controller) {
//                     return MaterialButton(
//                       onPressed: () {
//                         controller.decrementTwo();
//                       },
//                       child: Text("Sub number two"),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// GetX - Can call more than one GetX and just one time calling the controller if all of them use same controller.
// when call any of these GetX, it will update just which call
class RebuildPage extends StatelessWidget {
  RebuildPage({Key? key}) : super(key: key);
  final RebuildController controller = Get.put(RebuildController());
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ReBuild Page"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 200),
          child: Column(
            children: [
              Center(
                child: GetX<RebuildController>(
                  init: RebuildController(), // call it just once
                  builder: (controller) {
                    return Text(
                      "${controller.count1}",
                      style: TextStyle(fontSize: 20),
                    );
                  },
                ),
              ),
              Center(
                child: GetX<RebuildController>(
                  // init: RebuildController(), No Need
                  builder: (controller) {
                    return Text(
                      "${controller.count2}",
                      style: TextStyle(fontSize: 20),
                    );
                  },
                ),
              ),
              Center(
                child: GetX<RebuildController>(
                  // init: RebuildController(), No Need
                  builder: (controller) {
                    return Text(
                      "${controller.sum()}",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    );
                  },
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    controller.incrementOne();
                  },
                  child: Text("Add number one"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    controller.incrementTwo();
                  },
                  child: Text("Add number two"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    controller.decrementOne();
                  },
                  child: Text("Sub number one"),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    controller.decrementTwo();
                  },
                  child: Text("Sub number two"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
