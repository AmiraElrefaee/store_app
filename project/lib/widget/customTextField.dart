

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  CustomTextFormFiled({super.key,required this.hint,required this.onChanged,required this.iputType});
  String ?hint;
  Function (String)? onChanged;
TextInputType iputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10),
      child: TextFormField(
        obscureText: false,
        // validator: (data){
        //
        //   if(data!.isEmpty){
        //     return 'field is require' ;
        //
        //   }
        // },
        keyboardType: iputType,
        onChanged: onChanged,
        style: TextStyle(
            fontSize: 25
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: Colors.black,
                width: 2
            ),
          ),
          hintText:hint,
          focusedBorder: OutlineInputBorder(

              borderSide: BorderSide(

              )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
                color: Colors.black,
                width: 2
            ),

          ),

        ),
      ),
    );
  }
}
