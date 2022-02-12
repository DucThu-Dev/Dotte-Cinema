import 'package:dotte_repository/dotte_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';

import '../constants.dart';

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
          _userInformationWidgetBuilder(
            context,
            User("123", 'Tran Van A', '0935589201', ''),
          ),
          _menuTileBuilder(
              context, S.of(context).MyGift, Icons.wallet_giftcard, () {}),
          _menuTileBuilder(
              context, S.of(context).Notification, Icons.notifications, () {}),
          _menuTileBuilder(
              context, S.of(context).Watched, Icons.history, () {}),
          _menuTileBuilder(context, S.of(context).Rate, Icons.star, () {}),
          _menuTileBuilder(
              context, S.of(context).Setting, Icons.settings, () {}),
          _menuTileBuilder(context, S.of(context).SignOut, Icons.logout, () {}),
        ],
      ),
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

  Widget _menuTileBuilder(BuildContext context, String title, IconData iconData,
      VoidCallback action) {
    return ListTile(
      title: Text(title, style: Theme.of(context).textTheme.headline4),
      leading: Icon(iconData, color: Colors.red),
      trailing: const Icon(
        Icons.chevron_right,
        color: Colors.red,
      ),
    );
  }
}
