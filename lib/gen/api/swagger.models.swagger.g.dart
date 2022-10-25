// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Conversion _$ConversionFromJson(Map<String, dynamic> json) => Conversion(
      requestId: json['request_id'] as String,
      outputType: json['output_type'] as String,
      converted: json['converted'] as String,
    );

Map<String, dynamic> _$ConversionToJson(Conversion instance) =>
    <String, dynamic>{
      'request_id': instance.requestId,
      'output_type': instance.outputType,
      'converted': instance.converted,
    };

BadRequestResponse _$BadRequestResponseFromJson(Map<String, dynamic> json) =>
    BadRequestResponse(
      error: BadRequestResponse$Error.fromJson(
          json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BadRequestResponseToJson(BadRequestResponse instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
    };

BadRequestResponse$Error _$BadRequestResponse$ErrorFromJson(
        Map<String, dynamic> json) =>
    BadRequestResponse$Error(
      message: json['message'] as String,
    );

Map<String, dynamic> _$BadRequestResponse$ErrorToJson(
        BadRequestResponse$Error instance) =>
    <String, dynamic>{
      'message': instance.message,
    };

ConversionRequest _$ConversionRequestFromJson(Map<String, dynamic> json) =>
    ConversionRequest(
      appId: json['app_id'] as String,
      sentence: json['sentence'] as String,
      outputType: json['output_type'] as String,
    );

Map<String, dynamic> _$ConversionRequestToJson(ConversionRequest instance) =>
    <String, dynamic>{
      'app_id': instance.appId,
      'sentence': instance.sentence,
      'output_type': instance.outputType,
    };
