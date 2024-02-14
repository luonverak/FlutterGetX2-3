import 'package:demo2/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/counter_controller.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  final controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Obx(
          () => Text(
            '${controller.counter.value}',
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => controller.increase(),
            icon: const Icon(
              Icons.add,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () => controller.descrease(),
            icon: const Icon(Icons.remove, size: 30),
          ),
        ],
      ),
    );
  }
}
