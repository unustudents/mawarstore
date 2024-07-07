import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'beras_event.dart';
part 'beras_state.dart';

class BerasBloc extends Bloc<BerasEvent, BerasState> {
  BerasBloc() : super(BerasInitial()) {
    on<GetAllBerasEvent>((event, emit) {});
    on<AddBerasEvent>((event, emit) {});
  }
}
