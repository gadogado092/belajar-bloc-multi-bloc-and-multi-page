import 'package:bloc/bloc.dart';

//Bloc<in, out>
class CounterBloc extends Bloc<int, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(int event) async*{
    yield event;
  }

}