class ProductModel{
  final dynamic id;
  final String title;
  final dynamic  price;
  final String description;
 final String image;
 final String category;
 final RatingModel rating;

  ProductModel({required this.id,
    required this.category,
  required this.image,
  required this.title,
  required this.description,
  required this.price,
    required this.rating

  });

  factory ProductModel.fromJson(jsonData){
    if (jsonData == null) {
      throw Exception('ProductModel: jsonData is null in model');
    }
    return ProductModel(id: jsonData['id'] ??0,
        category: jsonData['category'] ??'Unknown',
        image: jsonData['image'] ??'https://th.bing.com/th/id/OIP.iiLfIvv8F-PfjMrjObypGgHaHa?rs=1&pid=ImgDetMain',
        title: jsonData['title'] ??'unknown',
        description: jsonData['description']??'unknown',
        price: jsonData['price']??0,
         // rating: jsonData['rating']!=null ?RatingModel.fromJson(jsonData['rating']) :null,
      rating: jsonData['rating'] != null
          ? RatingModel.fromJson(jsonData['rating'])
          : RatingModel(rate: 0.0, count: 0),
      // rating: RatingModel.fromJson(jsonData['rating']),


    );
  }

}
class RatingModel{
  final dynamic rate;
  final int count;
  RatingModel({required this.rate,required this.count});
  factory RatingModel.fromJson(jsonData){
    if (jsonData == null) {
      // Instead of throwing, safely handle null input
      return RatingModel(rate: 0.0, count: 0); // Provide default values
    }
   return RatingModel(
     rate:  jsonData['rate']??0.0,
       count: jsonData['count']??0

   );
  }
}