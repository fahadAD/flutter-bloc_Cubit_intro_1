import 'package:block_part_1/SCREEN/main1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'CUBIT_COUNTER/cubit_counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create:  (context) => CounterCubit(),

        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          home: HomePage() ,
        ),
    );








  }
}

