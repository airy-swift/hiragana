import 'package:chopper/chopper.dart';
import 'package:hiragana/env.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiClientProvider = Provider.family<ChopperClient, Converter>(
      (ref, converter) => ChopperClient(
    baseUrl: Env.apiBaseUrl,
    converter: converter,
  ),
);
