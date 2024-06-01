

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncEvent>(_onInc);
    on<CounterDecEvent>(_onDec);
  }

  _onInc(CounterIncEvent event, Emitter<int> em) {
    em(state + 1);
  }
  _onDec(CounterDecEvent event, Emitter<int> em) {
    em(state - 1);
  }
}



abstract class CounterEvent {}
class CounterIncEvent extends CounterEvent {}
class CounterDecEvent extends CounterEvent {}