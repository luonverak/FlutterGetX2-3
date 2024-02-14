import 'package:demo2/controller/counter_controller.dart';
import 'package:demo2/view/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.trArgs(['John'])),
        actions: [
          IconButton(
            onPressed: () {
              Get.updateLocale(Locale('kh', 'KH'));
            },
            icon: const Icon(Icons.language),
          ),
          IconButton(
            onPressed: () {
              Get.snackbar('Babe😘', 'message'.trArgs());
            },
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            icon: const Icon(Icons.dark_mode),
          ),
          IconButton(
            onPressed: () => Get.to(SecondScreen()),
            icon: const Icon(Icons.arrow_forward_ios),
          )
        ],
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

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Welcome',
          'message': 'I love you beb😘',
        },
        'kh_KH': {
          'title': 'ជម្រាបសួរ',
          'message': 'អូនស្រលាញ់បង😘',
        }
      };
}
