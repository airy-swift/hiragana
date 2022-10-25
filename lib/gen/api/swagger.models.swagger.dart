// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

part 'swagger.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class Conversion {
  Conversion({
    required this.requestId,
    required this.outputType,
    required this.converted,
  });

  factory Conversion.fromJson(Map<String, dynamic> json) =>
      _$ConversionFromJson(json);

  @JsonKey(name: 'request_id')
  final String requestId;
  @JsonKey(name: 'output_type')
  final String outputType;
  @JsonKey(name: 'converted')
  final String converted;
  static const fromJsonFactory = _$ConversionFromJson;
  static const toJsonFactory = _$ConversionToJson;
  Map<String, dynamic> toJson() => _$ConversionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Conversion &&
            (identical(other.requestId, requestId) ||
                const DeepCollectionEquality()
                    .equals(other.requestId, requestId)) &&
            (identical(other.outputType, outputType) ||
                const DeepCollectionEquality()
                    .equals(other.outputType, outputType)) &&
            (identical(other.converted, converted) ||
                const DeepCollectionEquality()
                    .equals(other.converted, converted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(requestId) ^
      const DeepCollectionEquality().hash(outputType) ^
      const DeepCollectionEquality().hash(converted) ^
      runtimeType.hashCode;
}

extension $ConversionExtension on Conversion {
  Conversion copyWith(
      {String? requestId, String? outputType, String? converted}) {
    return Conversion(
        requestId: requestId ?? this.requestId,
        outputType: outputType ?? this.outputType,
        converted: converted ?? this.converted);
  }

  Conversion copyWithWrapped(
      {Wrapped<String>? requestId,
      Wrapped<String>? outputType,
      Wrapped<String>? converted}) {
    return Conversion(
        requestId: (requestId != null ? requestId.value : this.requestId),
        outputType: (outputType != null ? outputType.value : this.outputType),
        converted: (converted != null ? converted.value : this.converted));
  }
}

@JsonSerializable(explicitToJson: true)
class BadRequestResponse {
  BadRequestResponse({
    required this.error,
  });

  factory BadRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$BadRequestResponseFromJson(json);

  @JsonKey(name: 'error')
  final BadRequestResponse$Error error;
  static const fromJsonFactory = _$BadRequestResponseFromJson;
  static const toJsonFactory = _$BadRequestResponseToJson;
  Map<String, dynamic> toJson() => _$BadRequestResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BadRequestResponse &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(error) ^ runtimeType.hashCode;
}

extension $BadRequestResponseExtension on BadRequestResponse {
  BadRequestResponse copyWith({BadRequestResponse$Error? error}) {
    return BadRequestResponse(error: error ?? this.error);
  }

  BadRequestResponse copyWithWrapped(
      {Wrapped<BadRequestResponse$Error>? error}) {
    return BadRequestResponse(
        error: (error != null ? error.value : this.error));
  }
}

@JsonSerializable(explicitToJson: true)
class BadRequestResponse$Error {
  BadRequestResponse$Error({
    required this.message,
  });

  factory BadRequestResponse$Error.fromJson(Map<String, dynamic> json) =>
      _$BadRequestResponse$ErrorFromJson(json);

  @JsonKey(name: 'message')
  final String message;
  static const fromJsonFactory = _$BadRequestResponse$ErrorFromJson;
  static const toJsonFactory = _$BadRequestResponse$ErrorToJson;
  Map<String, dynamic> toJson() => _$BadRequestResponse$ErrorToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BadRequestResponse$Error &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(message) ^ runtimeType.hashCode;
}

extension $BadRequestResponse$ErrorExtension on BadRequestResponse$Error {
  BadRequestResponse$Error copyWith({String? message}) {
    return BadRequestResponse$Error(message: message ?? this.message);
  }

  BadRequestResponse$Error copyWithWrapped({Wrapped<String>? message}) {
    return BadRequestResponse$Error(
        message: (message != null ? message.value : this.message));
  }
}

@JsonSerializable(explicitToJson: true)
class ConversionRequest {
  ConversionRequest({
    required this.appId,
    required this.sentence,
    required this.outputType,
  });

  factory ConversionRequest.fromJson(Map<String, dynamic> json) =>
      _$ConversionRequestFromJson(json);

  @JsonKey(name: 'app_id')
  final String appId;
  @JsonKey(name: 'sentence')
  final String sentence;
  @JsonKey(name: 'output_type')
  final String outputType;
  static const fromJsonFactory = _$ConversionRequestFromJson;
  static const toJsonFactory = _$ConversionRequestToJson;
  Map<String, dynamic> toJson() => _$ConversionRequestToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ConversionRequest &&
            (identical(other.appId, appId) ||
                const DeepCollectionEquality().equals(other.appId, appId)) &&
            (identical(other.sentence, sentence) ||
                const DeepCollectionEquality()
                    .equals(other.sentence, sentence)) &&
            (identical(other.outputType, outputType) ||
                const DeepCollectionEquality()
                    .equals(other.outputType, outputType)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(appId) ^
      const DeepCollectionEquality().hash(sentence) ^
      const DeepCollectionEquality().hash(outputType) ^
      runtimeType.hashCode;
}

extension $ConversionRequestExtension on ConversionRequest {
  ConversionRequest copyWith(
      {String? appId, String? sentence, String? outputType}) {
    return ConversionRequest(
        appId: appId ?? this.appId,
        sentence: sentence ?? this.sentence,
        outputType: outputType ?? this.outputType);
  }

  ConversionRequest copyWithWrapped(
      {Wrapped<String>? appId,
      Wrapped<String>? sentence,
      Wrapped<String>? outputType}) {
    return ConversionRequest(
        appId: (appId != null ? appId.value : this.appId),
        sentence: (sentence != null ? sentence.value : this.sentence),
        outputType: (outputType != null ? outputType.value : this.outputType));
  }
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
