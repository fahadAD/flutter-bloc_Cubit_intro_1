part of 'cubit_counter_cubit.dart';

@immutable
abstract class CounterState extends Equatable{

}

class CounterInitial extends CounterState {

  @override

   List<Object?> get props => [];


}

class counter_value_update extends CounterState{
  @override

  int counteR=0;

     counter_value_update({required this.counteR});


  List<Object?> get props => [counteR];

}