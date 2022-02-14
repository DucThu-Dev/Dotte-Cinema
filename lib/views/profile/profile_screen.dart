import 'package:dotte_repository/dotte_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/service_locator.dart';
import 'package:flutter_lotte_cinema_clone/theme/color_name.dart';
import 'package:flutter_lotte_cinema_clone/views/profile/avatar_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants.dart';

final userProvider = FutureProvider((ref) async {
  return await ref.watch(repositoryProvider).getUserInformation();
});

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).Profile),
      ),
      body: Consumer(
        builder: (context, ref, _) => ref.watch(userProvider).when(
              data: (user) => ListView(
                children: [
                  _userInformationWidgetBuilder(
                    context,
                    user,
                  ),
                  _menuTileBuilder(context, S.of(context).MyGift,
                      Icons.wallet_giftcard, () {}),
                  _menuTileBuilder(context, S.of(context).Notification,
                      Icons.notifications, () {}),
                  _menuTileBuilder(
                      context, S.of(context).Watched, Icons.history, () {}),
                  _menuTileBuilder(
                      context, S.of(context).Rate, Icons.star, () {}),
                  _menuTileBuilder(
                      context, S.of(context).Setting, Icons.settings, () {}),
                  _menuTileBuilder(
                      context, S.of(context).SignOut, Icons.logout, () {}),
                ],
              ),
              error: (_, __) => Center(
                child: Text(S.of(context).ErrorOccurred),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
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
          AvatarWidget(user: user),
          const SizedBox(
            height: kPaddingDefault3,
          ),
          Text(
            user.name,
            style: Theme.of(context).textTheme.headline3?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: kPaddingDefault2,
          ),
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
