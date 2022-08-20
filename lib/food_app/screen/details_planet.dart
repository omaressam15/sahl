import 'package:flutter/material.dart';

import '../../components.dart';
class DetailsPlanet extends StatelessWidget {
  const DetailsPlanet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    containerIcon(height: 50,size: 20, iconData: Icons.arrow_back),
                    text(text: 'Details',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                    ),
                    containerIcon(height: 50,size: 20, iconData: Icons.favorite_border),

                  ],
              ),
              Image.asset('assets/images/plant-small.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height *0.45,
              ),
              const SizedBox(height: 4,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(text: 'Ageratum',
                      fontSize: 27,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Icon(Icons.star,color: Colors.green,size: 20),
                      text(text: '4.8',fontWeight: FontWeight.bold),
                      text(text: '(268 Reviews)',color: Colors.grey),
                    ],
                  ),

                ],
              ),
              const SizedBox(height: 15,),
              text(height: 1.5,fontSize: 15.5,color: Colors.black,text: 'Ageratum is a genus of 40 to 60 tropical and warm temperate flowering annuals and perennials from the family Asteraceae, tribe Eupatorieae. Most species are native to Central America... Read More'),
              const SizedBox(height: 23,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(text: 'Size',color: Colors.grey,fontSize: 14),
                      SizedBox(height: 5,),
                      text(text: 'Medium',color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(text: 'Plant',color: Colors.grey,fontSize: 14),
                      SizedBox(height: 5,),
                      text(text: 'Orchid',color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(text: 'Height',color: Colors.grey,fontSize: 14),
                      SizedBox(height: 5,),
                      text(text: '12.6',color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text(text: 'Humidity',color: Colors.grey,fontSize: 14),
                      const SizedBox(height: 5,),
                      text(text: '82%',color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),
                    ],
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text(text: 'Price',color: const Color(0xff8c8c8c),fontSize: 16,),
                        SizedBox(height: 5,),
                        text(text: '\$39.99',color:  Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                      ],
                    ),
                    button(elevation: 10, radius: 25, width: 200, text: 'Add to Cart', height: 53),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
