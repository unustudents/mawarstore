part of 'beras_bloc.dart';

abstract class BerasState extends Equatable {
  const BerasState();

  @override
  List<Object> get props => [];
}

class BerasInitial extends BerasState {}

class AddBerasState extends BerasState {}

class RemoveBerasState extends BerasState {}
