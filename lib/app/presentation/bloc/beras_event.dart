part of 'beras_bloc.dart';

abstract class BerasEvent extends Equatable {
  const BerasEvent();

  @override
  List<Object> get props => [];
}

// Get Event
class GetAllBerasEvent extends BerasEvent {}

// Add Beras Event
class AddBerasEvent extends BerasEvent {}

// Update Beras Event
class UpdateBerasEvent extends BerasEvent {}

// Delete Beras Event
class DeleteBerasEvent extends BerasEvent {}
