import 'package:example/di/di.dart';
import 'package:example/locale_selector/bloc/locale_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:leafy/components/lf_dropdown_menu/lf_drop_down_menu_model.dart';
import 'package:leafy/components/lf_dropdown_menu/lf_drop_down_menu_widget.dart';

class LocaleChangerWidget extends StatelessWidget {
  final localeCubit = getIt.get<LocaleCubit>();

  LocaleChangerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LfDropDownMenuWidget(
      menuData: AppLocalizations.supportedLocales.map((locale) {
        String languageName = locale.languageCode;
        return LfDropDownMenuModel(
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