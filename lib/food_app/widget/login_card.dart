import 'package:flutter/material.dart';

import '../../components.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          defaultFormField(textInputType: TextInputType.text, label: 'Enter e-mail or username ..', isPressed: (){}),
          const SizedBox(height: 10),
          defaultFormField(textInputType: TextInputType.text, label: 'password..',suffix: Icons.visibility_outlined , isPressed: (){}),
          const SizedBox(height: 20,),
          Align( alignment: Alignment.centerRight,child: text(text: "Forget password",color: Colors.grey,fontWeight: FontWeight.w500)),

          const SizedBox(height: 30,),

          button(elevation: 8, radius: 20, width: 220, text: 'Login', height: 42),

          const SizedBox(height: 30,),

          text(text: 'OR',color: Colors.grey),

          const SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.circle,

                  ),
                  child: Image.asset('assets/icons/facebook.png')),
              Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.circle,

                  ),
                  child: Image.asset('assets/icons/twitter.png',scale: 1.4,)),
              Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey),
                    shape: BoxShape.circle,

                  ),
                  child: Image.asset('assets/icons/google.png',scale: 1.4,)),

            ],
          ),

        ],
      ),
    );
  }
}
