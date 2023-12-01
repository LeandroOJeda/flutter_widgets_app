import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {

    final bool darkMode = ref.watch(themeNotifierProvider).isDarkmode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme'),
        actions: [
           IconButton(
            onPressed: (){
              ref.read(themeNotifierProvider.notifier).toggleDarkmode();
            }, 
            icon: darkMode? const Icon(Icons.dark_mode_rounded): const Icon(Icons.light_mode_outlined))
        ],
      ),
      body:  const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
   const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {

    final List<Color> colors = ref.watch(colorListProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index){
        final Color color = colors[index];

        return RadioListTile(
          title: Text('Este color', style: TextStyle(color: color, fontWeight: FontWeight.bold)),
          subtitle: Text('${color.value}'),
          activeColor: color,
          value: index, 
          groupValue: selectedColor, 
          onChanged: (value){
            ref.read(themeNotifierProvider.notifier).changeColorIndex(index);
          }
        );
      }
    );
  }
}