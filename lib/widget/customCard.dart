import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [

        Container(
          height: 160,
          width: 250,
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
                  Text('hand bag LV',style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20
                  ),),
                  SizedBox(
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(r'$223',
                        style: TextStyle(
                            fontSize: 25
                        ),
                      ),
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
          bottom: 110,
          child: Image.network('https://th.bing.com/th/id/R.3fd089da680291b40b711d4a61a997e4?rik=rCC0gyZ76J1zhQ&riu=http%3a%2f%2fclipart-library.com%2fimages_k%2fpurse-transparent-background%2fpurse-transparent-background-3.png&ehk=aKmsWG8Mzy%2f1eunSAfR0HUoIccLRERhops%2bHWkGpzew%3d&risl=1&pid=ImgRaw&r=0',
            height: 120,),
        ),
      ],
    );
  }
}
