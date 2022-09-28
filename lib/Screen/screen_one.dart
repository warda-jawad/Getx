import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';

import '../Controller/home_controller.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Screen One"),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 150),
          child: Column(
            children: [
              GetX<HomeController>(
                  init: HomeController(),
                  builder: (controller) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {
                                controller.increment();
                              },
                              icon: Icon(Icons.add)),
                          Text("${controller.counter.value}"),
                          IconButton(
                              onPressed: () {
                                controller.decrement();
                              },
                              icon: Icon(Icons.minimize)),
                        ],
                      )),
            ],
          ),
        ),
      ),
    );
  }
}
