import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:structure_app/data/models/zekr.dart';
import 'package:structure_app/data/repositories/azkar_repository.dart';

part 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarStates> {
  AzkarCubit(this.azkarRepository) : super(AzkarStateInitial());
  AzkarRepository azkarRepository;

  static AzkarCubit get(context) => BlocProvider.of(context);

  late List<Zekr> azkar;

  Future<void> getAzkar() async {
    emit(AzkarStateLoading());
    azkar = await azkarRepository.getAzkar();
    emit(AzkarStateSuccess());
  }
}
