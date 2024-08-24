

import 'dart:convert';

import 'package:http/http.dart' ;

import '../helper/api.dart';
import '../model/product_model.dart';

class CategoryService{
Future <List<ProductModel>> Getcategory({required String categoryName})async{

  List<dynamic> data =
 await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');


    List<ProductModel> ProductList2=[];
    for(int i=0;i<data.length;i++){
      ProductList2.add(ProductModel.fromJson(data[i]));
    }
    return ProductList2;


}
}