

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);

// convertir la lista de colores inmutable y accesible a nivel aplicacion

final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider((ref) => 0);

final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier()
);


class ThemeNotifier extends StateNotifier <AppTheme>{

  //STATE = Estado = AppTheme()
  ThemeNotifier(): super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex( int index) {
    state = state.copyWith(selectedColor: index);
  }
}