import 'package:example/di/di.dart';
import 'package:example/locale_selector/bloc/locale_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:leafy/components/lf_dropdown_menu/leafy_appbar_menu/leafy_app_bar_icon_menu.dart';
import 'package:leafy/components/lf_dropdown_menu/leafy_appbar_menu/leafy_app_bar_icon_menu_model.dart';

class LocaleChangerWidget extends StatelessWidget {
  final localeCubit = getIt.get<LocaleCubit>();

  LocaleChangerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LeafyAppBarIconMenu(
      menuData: AppLocalizations.supportedLocales.map((locale) {
        String languageName = locale.languageCode;
        return LeafyAppBarIconMenuModel(
          title: languageName,
          onClick: () {
            localeCubit.changeLocale(locale.languageCode);
          },
        );
      }).toList(),
      menuIcon: Icons.language,
    );
  }
}