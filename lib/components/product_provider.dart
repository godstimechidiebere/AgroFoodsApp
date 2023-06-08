import 'package:agrofoods/src/features/authentication/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> herbsProductList = [];
  late ProductModel productModel;

  fetchHerbsproductData() async {
    List<ProductModel> newList = [];

    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbsProduct").get();

    value.docs.forEach(
      (element) {
        productModel = ProductModel(
          productImage: element.get("productName"),
          productName: element.get("productName"),
          productPrice : element.get("productName"),
        );
        newList.add(productModel);
      },
    );
    herbsProductList  = newList;
    notifyListeners();
  }
  get getHerbsProductDataList {
    return herbsProductList;
  }

}
