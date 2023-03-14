import 'package:block_part_1/CUBIT_COUNTER/cubit_counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body:  BlocBuilder<CounterCubit,CounterState>(

          builder:  (context, state) {

            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [


                  Text("${context.read<CounterCubit>().counter}",style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(onPressed:  (){
                    context.read<CounterCubit>().incremenT();
                  }, child: Icon(Icons.add_box_outlined)),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(onPressed:  (){
                    context.read<CounterCubit>().decremenT();
                  }, child: Icon(Icons.minimize_outlined)),

                ],
              ),
            );
          },
      ),

    );
  }
}
