class ProductModel{
  final int id;
  final String title;
  final double price;
  final String description;
 final String image;
 final RatingModel rating;

  ProductModel({required this.id,
  required this.image,
  required this.title,
  required this.description,
  required this.price
  ,required this.rating

  });

  factory ProductModel.fromJson(jsonData){
    return ProductModel(id: jsonData['id'],
        image: jsonData['image'],
        title: jsonData['title'],
        description: jsonData['description'],
        price: jsonData['price'],
         rating: RatingModel.fromJson(jsonData['rating']),


    );
  }

}
class RatingModel{
  final double rate;
  final int count;
  RatingModel({required this.rate,required this.count});
  factory RatingModel.fromJson(jsonData){
   return RatingModel(
     rate:  jsonData['rate'],
       count: jsonData['count']

   );
  }
}