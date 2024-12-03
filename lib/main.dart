import 'package:ecommerce_web_app/commons/widgets/header.dart';
import 'package:ecommerce_web_app/commons/widgets/product_search_bar.dart';
import 'package:ecommerce_web_app/pages/home/widgets/category_session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: const Scaffold(
        body: Center(
          child: Header(isExpanded: true,),
        ),
      ),
    );
  }
}
