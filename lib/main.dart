import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hh/cubit/app_cubit.dart';
import 'package:hh/layout/screens/homescreen.dart';
import 'package:hh/layout/screens/selectscreen.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

import 'cubit/observar.dart';



void main () async

{
  WidgetsFlutterBinding.ensureInitialized();

  doWhenWindowReady(() {
    final win = appWindow;
    final initialSize = Size(1350, 800);
    final minSize = Size(1350, 800);
    final maxSize = Size(1350, 800);
    win.maxSize = maxSize;
    win.minSize = minSize;
    win.size = initialSize; //default size
    //appWindow.maximizeOrRestore();
    win.title = "Cancer Detection";

    win.show();
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider<AppCubit>(
      create: (context)=>AppCubit(),
      child: BlocConsumer<AppCubit,AppState>(
        listener: (context , state){},
        builder: (context , state ){
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SelectScreen(),
          ) ;
        },
      ),
    );
  }
}

