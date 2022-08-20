import 'package:flutter/material.dart';
import 'package:sahl/components.dart';

import '../widget/login_card.dart';
import '../widget/registration_card.dart';

class LoginRegistration extends StatelessWidget {
  const LoginRegistration ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset('assets/images/food.jpg',fit: BoxFit.cover,height: MediaQuery.of(context).size.height),

            Center(
              child: Container(

                  height: MediaQuery.of(context).size.height *0.68,
                  width: 330,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.92),
                    borderRadius: BorderRadius.circular(20),

                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey,width: 0.6,)
                        ),
                        child: TabBar(
                          indicatorWeight: 0,
                          labelPadding:const EdgeInsets.all(6) ,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.red,
                          labelStyle: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(15), // Creates border
                              color: Colors.red.shade600),
                          tabs:  [
                            text(text: 'Login',alignment: TextAlign.justify),
                            text(text: 'Sign up ',),

                        ],),
                      ),
                    ),
                     SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height *0.55,
                      child:  const TabBarView(
                        children: [
                          LoginCard(),
                          RegistrationCard()


                        ],
                      ),
                    ),

                  ],
                ),
              ),
            )

          ],

        ),
      ),
    );
  }
}
