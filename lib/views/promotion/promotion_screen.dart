import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';

List<Map<String, dynamic>> _ticketTabData = [
  {
    'title': S.current.Gift,
  },
  {
    'title': S.current.EventByCinema,
  },
];

final List<Tab> _tabs = _ticketTabData
    .map((data) => Tab(
          text: data['title'],
        ))
    .toList();

class PromotionScreen extends StatelessWidget {
  const PromotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).Promotion),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
              ),
            ),
          ],
          bottom: TabBar(
            tabs: _tabs,
            indicatorPadding: const EdgeInsets.symmetric(horizontal: 24),
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(S.of(context).NoPromotionYet),
            ),
            Center(
              child: Text(S.of(context).NoEventAvailable),
            ),
          ],
        ),
      ),
    );
  }
}
