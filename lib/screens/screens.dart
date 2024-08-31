import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/model/product_model.dart';

import '../flutter_survcies/get_all-product.dart';
import '../widget/customCard.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
 static String id='HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text('new collection ',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600
        ),),
        actions: [IconButton(onPressed: (){}, icon: Icon(
          FontAwesomeIcons.cartShopping,size: 30,
        ))],
      ),
      body:Padding(
        padding: const EdgeInsets.only(left: 13,right: 13,top: 100),
        child: FutureBuilder<List<ProductModel>>(
          future: AllProductService().getAllProduct(),
          builder: (context,snapshot){
            List<ProductModel> product=snapshot.data !;
            if (snapshot.hasData) {
              print('11');
              return GridView.builder(
                itemCount: product.length,
                  clipBehavior: Clip.none,
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(

                    crossAxisCount:2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 90,

                  )
                  , itemBuilder: (context,index){
                return CustomCard(
                  product: product[index],
                );
              });
            }
            else {
            return Center(child: CircularProgressIndicator());
            }

          },
        )

      ),

    );
  }
}
