part of '../home_page.dart';

class _OutputText extends HookConsumerWidget {
  const _OutputText();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final convert = ref.watch(
        conversionControllerProvider.select((value) => value.conversion));

    return convert.when(
      data: (data) => data == null || data.converted.isEmpty //
          ? const Text('からっぽダヨ！')
          : Text(data.converted),
      error: (_, __) => const Text(
        'エラーだよ！!!!!!!!!',
        style: TextStyle(fontSize: 24),
      ),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
