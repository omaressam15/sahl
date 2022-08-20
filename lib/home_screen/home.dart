import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubit_home.dart';
import 'cubit/states_home.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeStates>(

      listener: (context,stats){},
      builder: (context,stats){

        var cubit = HomeCubit.get(context);

        return Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(12.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: SizedBox(
                height: 70,
                child: BottomNavigationBar(
                  iconSize: 23,
                  backgroundColor: Colors.grey[200],
                  type: BottomNavigationBarType.fixed,
                  onTap: (int index){
                    cubit.changeBottomNavigationBar(index);
                  },

                  items:cubit.bottomNavigationBarItem,

                  currentIndex: cubit.currentIndex,

                ),
              ),
            ),
          ),
          body: cubit.screens[cubit.currentIndex],
        );
      },
    );
  }
}