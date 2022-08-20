import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahl/home_screen/cubit/cubit_home.dart';
import 'package:sahl/home_screen/cubit/states_home.dart';
import 'package:sahl/login/login_screen.dart';
import 'package:sahl/verifyEmail/verify_email.dart';

import 'food_app/screen/login&restriction.dart';
import 'home_screen/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=>HomeCubit(),
      child: BlocConsumer<HomeCubit,HomeStates>(
        listener: (context,state){},
        builder: (context,stats){
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: const ShopScreen(),
          );
        },
      ),
    );
  }
}