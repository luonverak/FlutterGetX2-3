import 'package:get/get.dart';

class ProductModel {
  final int id;
  final String name;
  final double price;
  late RxInt counter;
  final String image;

  ProductModel({
    required this.id,
    required this.name,
    required this.price,
    required this.counter,
    required this.image,
  });
}

final List<ProductModel> listProduct = [
  ProductModel(
    id: 1,
    name: 'Coca',
    price: 1,
    counter: 1.obs,
    image: 'https://breadup.vn/wp-content/uploads/2023/08/COCA.png',
  ),
  ProductModel(
    id: 2,
    name: 'Sting',
    price: 0.6,
    counter: 1.obs,
    image: 'https://qne.com.pk/cdn/shop/products/sting5.png?v=1642574040',
  ),
  ProductModel(
    id: 3,
    name: 'Pizza',
    price: 10,
    counter: 1.obs,
    image:
        'https://www.foodandwine.com/thmb/Wd4lBRZz3X_8qBr69UOu2m7I2iw=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/classic-cheese-pizza-FT-RECIPE0422-31a2c938fc2546c9a07b7011658cfd05.jpg',
  ),
  ProductModel(
    id: 4,
    name: 'Burger',
    price: 0.6,
    counter: 1.obs,
    image:
        'https://assets.epicurious.com/photos/5c745a108918ee7ab68daf79/1:1/w_2560%2Cc_limit/Smashburger-recipe-120219.jpg',
  ),
  ProductModel(
    id: 5,
    name: 'Hanuman Beer',
    price: 0.6,
    counter: 1.obs,
    image:
        'https://www.thedrinksbusiness.com/content/uploads/2022/06/2519EE4F-7B22-4A4B-B22A-1040C324D784.jpeg',
  ),
  ProductModel(
    id: 6,
    name: 'Jinro',
    price: 0.6,
    counter: 1.obs,
    image: 'https://3elixir.sg/cdn/shop/files/166.png?v=1687101264',
  )
];
