import 'package:flutter/material.dart';
import '../components.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text('Sahl',style: TextStyle(color: Color(0xff4057f9),fontWeight: FontWeight.bold,fontSize: 40)),
                  Text('العربية',style: TextStyle(fontSize: 18)),
                ],
              ),
              const SizedBox(height: 50,),
              text(text: 'Sing in', fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
              const SizedBox(height: 35,),
              text(text: 'Phone number', fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black87),
              const SizedBox(height: 15,),

              defaultFormField(
                iconData: Icons.phone,
                isPressed: (){},
                textInputType: TextInputType.phone,
                label: 'Enter your number',
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  text(text: 'password', fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
                  text(text: 'Forget Password', fontSize: 15, fontWeight: FontWeight.w500, color: Colors.blue),
                ],
              ),
              const SizedBox(height: 15,),
              defaultFormField(
                iconData: Icons.password,
                isPassword: true,
                suffix: Icons.visibility_outlined,
                isPressed: (){},
                textInputType: TextInputType.visiblePassword,
                label: 'Enter your password',
              ),
              const SizedBox(height: 30,),
              button(text: 'Log in',height: 55,elevation: 8,radius: 8,width: MediaQuery.of(context).size.width),
              const SizedBox(height: 30,),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: const TextSpan(

                    children: <TextSpan>[
                      TextSpan(text: 'Not a member ?', style: TextStyle(color: Colors.black45,fontSize: 17)),
                      TextSpan(text: ' Create an account',style: TextStyle(fontSize: 17,color: Colors.black87,decoration: TextDecoration.underline)),
                    ],
                  ),
                ),
              ),
              const Spacer(),

              const Align(
                heightFactor: 5,
                alignment: Alignment.center,
                  child: Text('Need Help?',style: TextStyle(fontSize: 17,color: Colors.black87,decoration: TextDecoration.underline)))

            ],
          ),
        ),
      ),
    );
  }
}
