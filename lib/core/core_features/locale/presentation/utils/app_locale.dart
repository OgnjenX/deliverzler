import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../../../../../generated/l10n.dart';
import '../../../../presentation/styles/styles.dart';

enum AppLocale {
  english(
    'en',
    Assets.languagesIconsEnglish,
    FontStyles.familyPoppins,
  ),
  arabic(
    'ar',
    Assets.languagesIconsArabic,
    FontStyles.familyTajawal,
  );

  const AppLocale(this.code, this.flag, this.fontFamily);

  final String code;
  final String flag;
  final String fontFamily;

  String getLanguageName(BuildContext context) {
    return switch (this) {
      AppLocale.arabic => S.of(context).arabic,
      AppLocale.english => S.of(context).english,
    };
  }
}
