import 'dart:convert';

import '../helper/api.dart';
import '../model/product_model.dart';
import 'package:http/http.dart' as http;
class AllProductService{


Future<List<ProductModel>> getAllProduct() async{

  List<dynamic> data =
  await Api().get(url: 'https://fakestoreapi.com/products');
// print('6');
    List<ProductModel> ProductList=[];
    // print('7');
  try {
    for (int i = 0; i < data.length; i++) {
      // print('8');
      ProductList.add(ProductModel.fromJson(data[i]));
     // print(ProductList[i]);
      // print('10');
    }
  } catch (e) {
    print('error in all product servive : $e');
  }
    // print('9');

    return ProductList;


}

}