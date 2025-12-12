import 'package:base/app/app.dart';
import 'package:base/domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'home.dart';

@Injectable()
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this._repository) : super(HomeState()) {
    on<HomeEventInitial>(_homeInitial);
  }

  final Repository _repository;

  Future<void> _homeInitial(HomeEventInitial event, Emitter<HomeState> emit) async {
    final output = await _repository.ping();
    emit(state.copyWith(messenger: output));
  }
}
