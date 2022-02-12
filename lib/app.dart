import 'package:dotte_repository/dotte_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_lotte_cinema_clone/routes.dart';

import 'generated/l10n.dart';
import 'theme/app_theme_data.dart';
import 'views/views.dart';

class DotteApp extends StatelessWidget {
  const DotteApp({Key? key, required DotteRepository repository})
      : _dotteRepository = repository,
        super(key: key);

  final DotteRepository _dotteRepository;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.themeData(),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Lotte Cinema Clone',
      home: const HomeScreen(),
      routes: LotteAppRoutes.routes,
    );
  }
}
