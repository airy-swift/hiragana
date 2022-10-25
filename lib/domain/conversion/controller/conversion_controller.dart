import 'package:hiragana/domain/conversion/controller/conversion_state.dart';
import 'package:hiragana/domain/conversion/repository/conversion_repository.dart';
import 'package:hiragana/service/dot_env_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final conversionControllerProvider =
    StateNotifierProvider<ConversionController, ConversionState>(
  ConversionController.new,
);

class ConversionController extends StateNotifier<ConversionState> {
  ConversionController(this._ref) : super(const ConversionState());

  final StateNotifierProviderRef<ConversionController, ConversionState> _ref;

  ConversionRepository get _conversionRepository =>
      _ref.read(conversionRepositoryProvider);

  Future<void> convertToHiragana({required String sentence}) async {
    if (!mounted || state.conversion is AsyncLoading) {
      return;
    }

    try {
      state = state.copyWith(conversion: const AsyncValue.loading());

      final response = await _conversionRepository.convertToHiragana(
        appId: DotEnvService.shared.gooApiKey,
        sentence: sentence,
      );

      if (!response.isSuccessful) {
        throw Exception(response.error);
      }

      if (!mounted) {
        return;
      }

      state = state.copyWith(
        conversion: AsyncValue.data(response.body),
      );
    } on Exception catch (e, st) {
      if (!mounted) {
        return;
      }
      state = state.copyWith(
        conversion: AsyncValue.error(e, st),
      );
    }
  }
}
