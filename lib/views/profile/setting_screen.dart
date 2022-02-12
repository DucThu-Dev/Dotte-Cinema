import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).Setting)),
      body: Container(),
    );
  }
}
