import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hiragana/gen/api/swagger.models.swagger.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'conversion_state.freezed.dart';

@freezed
class ConversionState with _$ConversionState {
  const factory ConversionState({
    @Default(AsyncValue.data(null)) AsyncValue<Conversion?> conversion,
  }) = _ConversionState;
}