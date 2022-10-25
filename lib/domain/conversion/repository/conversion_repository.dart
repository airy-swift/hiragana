import 'package:chopper/chopper.dart';
import 'package:hiragana/gen/api/swagger.swagger.dart';
import 'package:hiragana/provider/api_client_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final conversionRepositoryProvider =
    Provider(ConversionRepository.new);

class ConversionRepository {
  ConversionRepository(this._ref);

  final ProviderRef<ConversionRepository> _ref;

  Swagger get _apiService => Swagger.create(
        client: _ref.read(apiClientProvider($JsonSerializableConverter())),
      );

  Future<Response<Conversion>> convertToHiragana({
    required String appId,
    required String sentence,
  }) async {
    return _apiService.hiraganaPost(
      body: ConversionRequest(
        appId: appId,
        sentence: sentence,
        outputType: 'hiragana',
      ),
    );
  }

  Future<Response<Conversion>> convertToKatakana({
    required String appId,
    required String sentence,
  }) async {
    return _apiService.hiraganaPost(
      body: ConversionRequest(
        appId: appId,
        sentence: sentence,
        outputType: 'katakana',
      ),
    );
  }
}
