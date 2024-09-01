import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/model/product_model.dart';

import '../flutter_survcies/update.dart';
import '../widget/CustomButton.dart';
import '../widget/customTextField.dart';

class UpadateProductPage extends StatefulWidget {
   UpadateProductPage({super.key});
 static String id ='UpadateProductPage';

  @override
  State<UpadateProductPage> createState() => _UpadateProductPageState();
}

class _UpadateProductPageState extends State<UpadateProductPage> {
 String ?name ,desc, image ;

 num ?price;

bool isLoading=false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall:isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Updates'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFormFiled(
                  iputType: TextInputType.text,
                  hint: 'product name',
                  onChanged: (value){
                    name=value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextFormFiled(
                  iputType: TextInputType.text,
                  hint: 'Description',
                  onChanged: (value){
                    desc=value;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextFormFiled(
                  iputType: TextInputType.number,
                  hint: 'price',
                  onChanged: (value){
                    print(99999);
                    price = num.tryParse(value) ?? 0;
                    print(value);
                    print(price);
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextFormFiled(
                  iputType: TextInputType.text,
                  hint: 'image',
                  onChanged: (value){
                    image=value;
                  },
                ),
                SizedBox(
                  height: 20,
                ),

                CustomBotton(
                  text: 'Update',
                  onTap: () async{
                    isLoading=true;
                    setState(() {

                    });
                    try {
                     await updateProduct(product);
                      print('sucess');
                    }  catch (e) {
                      print('ewwwwww $e');
                    } isLoading=false;
                    setState(() {

                    });


                  },
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

  Future <void> updateProduct(ProductModel product) async {
    // num parsedPrice = num.tryParse(price ?? product.price.toString()) ?? product.price;
    print(price);
   await  UpdateProductService().updateProduct(

         id: product.id,
        title: name==null? product.title: name!,
         price:  price ?? product.price,
         desc:  desc==null? product.description: desc!,
         image:  image==null? product.image: image!,
         category:product.category);

  }
}
