import 'package:example/core/widget/appbar_menu/appbar_icon_menu.dart';
import 'package:example/core/widget/appbar_menu/appbar_menu_model.dart';
import 'package:example/di/di.dart';
import 'package:example/locale_selector/bloc/locale_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocaleChangerWidget extends StatelessWidget {
  final localeCubit = getIt.get<LocaleCubit>();

  LocaleChangerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBarMenu(
      menuData: AppLocalizations.supportedLocales.map((locale) {
        String languageName = locale.languageCode;
        return AppBarMenuModel(
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