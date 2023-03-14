import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'cubit_counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counter=0;

  void incremenT(){
    counter++;
    emit(counter_value_update(counteR: counter));
  }


  void decremenT(){
    counter--;
    emit(counter_value_update(counteR: counter));
  }

}
