import 'package:flutter/material.dart';
import 'package:sahl/model.dart';

Widget defaultFormField({
 // required TextEditingController controller,
  required TextInputType textInputType,
 // required Function validator,
  required String label,
  IconData? iconData,
  bool isPassword = false,
  //required Function onTap,
   IconData? suffix,
  required Function isPressed,
  //required Function onChange,
}) =>
    TextFormField(
     // controller: controller,
      keyboardType: textInputType,
      obscureText: isPassword,
      style: const TextStyle(color: Colors.black),

      //onTap: ()=>onTap,
      onFieldSubmitted: (String value) {
      },
      onChanged: (String onChange)=>onChange,
      //validator: (String? valid)=>validator(),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey),
        //prefixIcon: Icon(iconData),

        suffixIcon: suffix != null
            ? InkWell(onTap:()=> isPressed, child: Icon(suffix)) : null,

        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );

Widget text ({
  required String text,
  TextAlign? alignment,
  TextDecoration? textDecoration,
  double? fontSize,
  FontWeight? fontWeight,
  double ? height,
  Color? color,
})=>Text(text,textAlign: alignment,style: TextStyle(height:height ,fontSize: fontSize,decoration:textDecoration,fontWeight:fontWeight,color: color ),);

Widget button ({
  required double elevation,
  required double radius,
  required double width,
  required String text,
  required double height })=>ElevatedButton(
  onPressed: () {  },
  style: ElevatedButton.styleFrom(
    elevation: elevation,
    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(radius))),
    primary: const Color(0xff51ac9a),
    minimumSize: Size(width, height),
   // onSurface: Colors.amberAccent,
   // surfaceTintColor: Colors.blue,
  ),
child:  Text(text,style: const TextStyle(fontSize: 16)),);

Widget container({required DataList dataList})=>Card(
  color: Colors.white,
  elevation: 5,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  child:   Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [

      Icon(dataList.icon,size: 40,color: Colors.deepPurpleAccent),
      const SizedBox(height: 15,),
      text(text: dataList.text, fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
    ],
  ),
);

Widget containerIcon({
    double? height ,
    double? width,
    required IconData iconData,
    required double size ,
}
    )=> Container(
    height: height,
    width: width,
    padding: const EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: const Color(0xfff3f3f4),width: 5,),
    ),
    child:  Icon(iconData,size: size,));


