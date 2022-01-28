import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/constants.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/model/user.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).Profile),
      ),
      body: ListView(
        children: [
          _loadingFilmBuilder(context),
        ],
      ),
    );
  }

  Widget _loadingFilmBuilder(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _userInformationWidgetBuilder(BuildContext context, User user) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: kAvatarRadius,
            foregroundImage: NetworkImage(user.avatarUrl),
          ),
          Text(user.name, style: Theme.of(context).textTheme.headline3),
          Text(user.phoneNumber, style: Theme.of(context).textTheme.bodyText2),
        ],
      ),
    );
  }
}
