import '../helper/api.dart';
import '../model/product_model.dart';

class UpdateProductService{
  Future<ProductModel> updateProduct({
    required String title,
    required num price,
    required String desc
    ,required String image,
    required String category,
    required int id,

  })async{
    print('the id $id');
    try {
      print(111);
      Map<String, dynamic> data = await Api().put(
        url: 'https://fakestoreapi.com/products/$id',
        body: {
          'title': title,
          'price': price.toString(),
          'description': desc,
          'image': image,
          'category': category,
        },
      );

      print(222);
      print('Response Data: $data'); // Check if data is null or structured as expected

      if (data == null || data.isEmpty) {
        print(777);
        throw Exception('API returned null or empty response');
      }

      ProductModel productModel = ProductModel.fromJson(data);
      print(333);
      return productModel;
    } catch (e, stackTrace) {
      print('Error occurred while creating ProductModel: $e');
      print('Stack trace: $stackTrace'); // Print the stack trace for deeper inspection
      rethrow; // Rethrow if needed
    }



  }
}