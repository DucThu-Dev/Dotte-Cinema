import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';

import '../constants.dart';
import '../widget/body_template_widget.dart';
import '../widget/default_divider_widget.dart';

class CinemaScreen extends StatelessWidget {
  const CinemaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).Cinama),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kPaddingDefault2,
              horizontal: kPaddingDefault3,
            ),
            child: Placeholder(
              fallbackHeight: kBottomNavigationBarHeight,
              fallbackWidth: screenSize.width,
            ),
          ),

          /// Cinema near user section.
          BodyTemplateWidget(
            title: S.of(context).CinemaNearYou,
            body: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: kEdgeInsetsDefault1,
                  child: Text(
                    S.of(context).WeDontFindAnyCinemaNearYourPosition,
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          const DefaultDividerWidget(),

          /// Cinema liked section.
          BodyTemplateWidget(
            title: S.of(context).LikedCinema,
            body: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: kEdgeInsetsDefault1,
                  child: Text(
                    S.of(context).YouDidntLikeAnyCinemaYet,
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
