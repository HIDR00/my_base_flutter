import 'package:base/app/base/bloc/base_bloc.dart';
import 'package:base/app/my_app/bloc/app_event.dart';
import 'package:base/app/my_app/bloc/app_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(AppState()) {
    on<AppEventInitial>(_appInitial);
  }

  Future<void> _appInitial(AppEventInitial event, Emitter<AppState> emit) async {
    await Future.delayed(Duration(seconds: 3));
    emit(state.copyWith(isLoading: true));
  }
}
