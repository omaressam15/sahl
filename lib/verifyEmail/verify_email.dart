import 'package:flutter/material.dart';
import 'package:sahl/components.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(child: Image.asset('assets/images/email.png',width: 235)),
            const SizedBox(height: 20),
            text(text: 'Verify your e-mail', fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
            const SizedBox(height: 55),

            SizedBox(width: 320,height: 115,child: text(text: 'In order to protect '
                'the security of your account, please verify your e-mail.'
                ' Would you like to verify your e-mail now?',alignment: TextAlign.center, fontSize: 17,fontWeight: FontWeight.w400, color: Colors.black54)),

            button(elevation: 5, radius: 10, width: 335, height: 50,text: 'Verify your e-mail'),
            const SizedBox(height: 25,),
            SizedBox(height: 80,child: text(text: 'Maybe Later', fontSize: 16, textDecoration: TextDecoration.underline,fontWeight: FontWeight.w400, color: Colors.purpleAccent))

          ],
        ),
      ),
    );
  }
}
