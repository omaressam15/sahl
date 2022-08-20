import 'package:flutter/material.dart';
import 'package:sahl/components.dart';
import 'package:sahl/model.dart';

import '../Data/data.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.deepPurpleAccent
              ]
            )
          ),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(

                padding: const EdgeInsets.only(left: 25,top: 15,bottom: 15),
                child: text(text: 'Sahl', fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
              ),

              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        childAspectRatio: 1.7,
                        mainAxisSpacing: 8),
                    itemBuilder:(context,index)=> container(dataList: dataSession[index]),
                    itemCount: dataSession.length,),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
