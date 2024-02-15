import 'package:demo2/controller/product_controller.dart';
import 'package:demo2/model/product_model.dart';
import 'package:demo2/view/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';
import '../widget/font_colors.dart';
import '../widget/product_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                children: [
                  const Text(
                    'The Street',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Get.to(CartScreen()),
                    child: badges.Badge(
                      badgeContent: Obx(
                        () => Text('${controller.list.length}'),
                      ),
                      child: Icon(Icons.shopping_cart),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 1.6,
                children: List.generate(
                  listProduct.length,
                  (index) => item(
                    listProduct[index],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
