import 'dart:convert';

import '../helper/api.dart';
import '../model/product_model.dart';
import 'package:http/http.dart' as http;
class AllProductService{


Future<List<ProductModel>> getAllProduct() async{

  List<dynamic> data =
  await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> ProductList=[];
    for(int i=0;i<data.length;i++){
      ProductList.add(ProductModel.fromJson(data[i]));}
    return ProductList;


}

}