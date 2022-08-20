import 'package:flutter/material.dart';

import '../components.dart';
import '../food_app/screen/details_planet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                text(text: 'Find your\nfavorite plants',
                    color: const Color(0xff2b2b2b),
                    fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
                Container(
                  height: 55,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: const Color(0xffefeff1),width: 4,),
                  ),
                    child: const Icon(Icons.search,size: 27,)),
              ],
            ),
            const SizedBox(height: 45,),
            Stack(
              alignment: Alignment.topRight,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 115,
                  decoration: BoxDecoration(
                    color: const Color(0xffd2ebc1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            text(text: '30% OFF',
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                            ),
                            const SizedBox(height: 8,),
                            text(text: '02-23 July',
                                color: const Color(0xff90a480),
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                    right: 15,
                    child: Image.asset('assets/images/planet.png',width: 128,))

              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 35,
              width: MediaQuery.of(context).size.width,
              child: ListView(

                scrollDirection: Axis.horizontal,

                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        //shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.black,width: 2),
                      ),
                      child: text(text: 'All',color:Colors.black,fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        //shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.grey,width: 1),
                      ),
                      child: text(text: 'Indoor',color:Colors.black,fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        //shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.grey,width: 1),
                      ),
                      child: text(text: 'Outdoor',color:Colors.black,fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        //shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.grey,width: 1),
                      ),
                      child: text(text: 'Popular',color:Colors.black,fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: ()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DetailsPlanet())),
                    child: Container(

                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                        child:Stack(
                          children: [
                            Image.asset('assets/images/plant.jpg'),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 20,right: 10),
                                  child: text(text: '\$39',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: Colors.white,

                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 15),
                                        child: text(text: 'Add to Cart',color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),
                                      ),
                                      const SizedBox(width: 15,),
                                      const CircleAvatar(
                                        backgroundColor: Colors.black,
                                        child: Icon(Icons.favorite_border),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )

                          ],
                    )

                ),
                  ),
                )

            )

          ],
        ),
      ),
    );
  }
}