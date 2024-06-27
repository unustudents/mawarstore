part of 'database_cubit.dart';

sealed class DatabaseState extends Equatable {
  const DatabaseState();

  @override
  List<Object> get props => [];
}

final class DatabaseInitial extends DatabaseState {}

final class LoadDatabaseState extends DatabaseState {}
