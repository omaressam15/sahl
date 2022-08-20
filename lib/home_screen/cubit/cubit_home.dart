import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sahl/home_screen/cubit/states_home.dart';
import 'package:sahl/model.dart';
import 'package:sahl/screens/account.dart';
import 'package:sahl/screens/balance.dart';
import 'package:sahl/screens/feed.dart';

import '../../screens/favorite.dart';
import '../../screens/home.dart';

class HomeCubit extends Cubit<HomeStates> {

  HomeCubit() : super(InitialHomeState());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;



  List <Widget> screens = [

    const HomeScreen(),

    const BalanceScreen(),

   // const AccountScreen(),
    const AccountScreen(),
    const FavoriteScreen(),
    const FavoriteScreen(),

  ];

  void changeBottomNavigationBar(int index) {
    currentIndex = index;
    emit(ButtonNavigationBar());
  }

  List<BottomNavigationBarItem> bottomNavigationBarItem = [

    const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    const BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favorite'),

    const BottomNavigationBarItem(icon: CircleAvatar(backgroundColor: Colors.green,child: Icon(Icons.qr_code_scanner)), label: 'Scanner'),

    const BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'shopper'),
    const BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profile'),

  ];
}