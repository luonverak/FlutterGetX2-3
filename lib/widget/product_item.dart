import 'package:demo2/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product_controller.dart';
import 'font_colors.dart';

Widget item(ProductModel productModel) {
  final controller = Get.put(ProductController());
  return Stack(
    children: [
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              blurRadius: 3,
              color: Color.fromARGB(255, 228, 228, 228),
            )
          ],
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(productModel.image),
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Text(
            productModel.name,
            style: const TextStyle(
              fontSize: 20,
              backgroundColor: Colors.amber,
            ),
          ),
        ),
      ),
      Positioned(
        bottom: 10,
        right: 10,
        child: GestureDetector(
          onTap: () {
            controller.addCart(productModel);
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(50)),
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(
                Icons.shopping_cart,
                color: iconColor,
              ),
            ),
          ),
        ),
      )
    ],
  );
}
