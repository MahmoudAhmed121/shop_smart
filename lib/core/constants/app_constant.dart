import 'package:shop_smart/core/services/assets_manager.dart';
import 'package:shop_smart/models/categories_model.dart';

abstract class AppConstant {
  static const String imageUrl =
      "https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-5-100.png";

  static List<String> bannerImage = [
    AssetsManager.banner1,
    AssetsManager.banner2,
  ];

  static List<CategorieModels> categoriesList = [
    CategorieModels(
      id: "phones",
      image: AssetsManager.mobiles,
      name: "phones",
    ),
    CategorieModels(
      id: "Laptops",
      image: AssetsManager.pc,
      name: "Laptops",
    ),
    CategorieModels(
      id: "Electronics",
      image: AssetsManager.electronics,
      name: "Electronics",
    ),
    CategorieModels(
      id: "Watches",
      image: AssetsManager.watch,
      name: "Watches",
    ),
    CategorieModels(
      id: "Clothes",
      image: AssetsManager.fashion,
      name: "Clothes",
    ),
    CategorieModels(
      id: "Shoes",
      image: AssetsManager.shoes,
      name: "Shoes",
    ),
    CategorieModels(
      id: "Books",
      image: AssetsManager.book,
      name: "Books",
    ),
    CategorieModels(
      id: "Cosmetics",
      image: AssetsManager.cosmetics,
      name: "Cosmetics",
    ),
  ];
}
