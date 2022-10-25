import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hiragana/component/bordered_text_form.dart';
import 'package:hiragana/domain/conversion/controller/conversion_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'widget/output_text.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ひらがな変換'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(37),
        child: Column(
          children: [
            const Gap(50),

            // output
            const Text(
              'Output',
              style: TextStyle(fontSize: 18),
            ),
            const Gap(5),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: const Color(0x552fca44),
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: const Center(
                  child: _OutputText(),
                ),
              ),
            ),

            const Gap(25),

            // input
            const Text(
              'Input',
              style: TextStyle(fontSize: 18),
            ),
            const Gap(5),
            BorderedTextForm(
              textController: textController,
              hintLabel: 'カタカナを入力してください',
            ),

            // convert button
            const Gap(25),
            ElevatedButton(
              onPressed: () {
                ref
                    .read(conversionControllerProvider.notifier)
                    .convertToHiragana(
                      sentence: textController.text,
                    );
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                child: Text('変換！'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
