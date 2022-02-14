import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/views/home/cinema_nearby_widget.dart';

import '../constants.dart';
import '../widget/body_template_widget.dart';
import '../widget/default_divider_widget.dart';

class CinemaScreen extends StatelessWidget {
  const CinemaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).Cinama),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          /// Cinema near user section.
          BodyTemplateWidget(
            title: S.of(context).CinemaNearYou,
            body: const Padding(
                padding: kEdgeInsetsDefault1, child: CinemaListWidget()),
          ),

          const DefaultDividerWidget(),

          /// Cinema liked section.
          BodyTemplateWidget(
            title: S.of(context).LikedCinema,
            body: const Padding(
              padding: kEdgeInsetsDefault1,
              child: CinemaListWidget(),
            ),
          ),
        ],
      ),
    );
  }
}
