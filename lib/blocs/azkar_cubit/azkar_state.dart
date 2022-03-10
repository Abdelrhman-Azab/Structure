part of 'azkar_cubit.dart';

@immutable
abstract class AzkarStates {}

class AzkarStateInitial extends AzkarStates {}

class AzkarStateLoading extends AzkarStates {}

class AzkarStateSuccess extends AzkarStates {}

class AzkarStateFailed extends AzkarStates {}
