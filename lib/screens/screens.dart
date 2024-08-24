import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body:GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:2)
          , itemBuilder: (context,index){
        return CustomCard();
      }),

    );
  }
}
