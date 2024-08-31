import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/model/product_model.dart';

import '../screens/update_product_page.dart';

class CustomCard extends StatelessWidget {
   CustomCard({super.key,required this.product});
ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, UpadateProductPage.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
      
          Container(
            // height: 190,
            // width: 250,
            decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    color: Colors.grey.withOpacity(.2),
                    spreadRadius: 0,
                    offset: Offset(10, 10),
      
                  )
                ]
            ),
            child: Card(
              color: Colors.white,
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,
                    vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.title.substring(0,10),
                      softWrap: false,
                     
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(
                      height: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Text(r'$''${product.price}',
                        //   style: TextStyle(
                        //       fontSize: 25
                        //   ),
                        // ),
                        IconButton(onPressed: (){}, icon: Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.red,
      
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 22,
            top: -75,
            child: Image.network(product.image,
              height: 110,
            width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
