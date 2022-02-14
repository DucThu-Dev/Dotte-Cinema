import 'dart:async';

import 'package:dotte_repository/dotte_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;

  runZonedGuarded(() {
    runApp(const ProviderScope(
      child: DotteApp(),
    ));
  }, (_, __) {
    /// Errors handler - Firebase Crashlytics for example.
  });
}
