import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hh/cubit/app_cubit.dart';
import 'package:hh/helpers/shared/dio.dart';
import 'package:hh/helpers/shared/sharedpref.dart';
import 'package:hh/layout/screens/homescreen.dart';

import 'cubit/observar.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await CacheHelper.init();
  BlocOverrides.runZoned(
        () => runApp(const MyApp()),
    blocObserver: AppBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider<AppCubit>(
      create: (context)=>AppCubit()..createDB(),
      child: BlocConsumer<AppCubit,AppState>(
        listener: (context , state){},
        builder: (context , state ){
          return const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomeScreen(),
          ) ;
        },
      ),
    );
  }
}

