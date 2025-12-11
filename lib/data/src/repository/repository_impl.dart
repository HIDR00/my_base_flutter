import 'package:base/data/data.dart';
import 'package:base/domain/src/repository/repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: Repository)
class RepositoryImpl implements Repository {
  RepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<String> ping() async {
    final response = await _apiService.ping();
    return response?.message ?? '';
  }
}
