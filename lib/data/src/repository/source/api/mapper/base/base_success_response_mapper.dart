import 'package:base/data/data.dart';
import 'package:base/shared/shared.dart';

enum SuccessResponseMapperType {
  dataJsonObject,
}

abstract class BaseSuccessResponseMapper<I extends Object, O extends Object> {
  const BaseSuccessResponseMapper();

  factory BaseSuccessResponseMapper.fromType(SuccessResponseMapperType type) {
    return switch (type) {
      SuccessResponseMapperType.dataJsonObject => DataJsonObjectResponseMapper<I>() as BaseSuccessResponseMapper<I, O>
    };
  }

  O? map({required dynamic response, Decoder<I>? decoder}) {
    return mapToDataModel(response: response, decoder: decoder);
  }

  O? mapToDataModel({required dynamic response, Decoder<I>? decoder});
}
