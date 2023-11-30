import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final int clickCounter = ref.watch(counterProvider);
    final bool darkMode = ref.watch(isDarkModeProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
               ref.read(isDarkModeProvider.notifier)
                .update((state) => !state);
            }, 
            icon: darkMode? const Icon(Icons.dark_mode_rounded): const Icon(Icons.light_mode_outlined))
        ],
        title: const Text('Contador'),
      ),
      body: Center(
        child: Text('Valor: $clickCounter', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.plus_one_outlined)),
    );
  }
}