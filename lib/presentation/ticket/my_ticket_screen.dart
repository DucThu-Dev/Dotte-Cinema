import 'package:flutter/material.dart';
import 'package:flutter_lotte_cinema_clone/generated/l10n.dart';
import 'package:flutter_lotte_cinema_clone/resource/color_resource.dart';

List<Map<String, dynamic>> _ticketTabData = [
  {
    'title': S.current.Watching,
  },
  {
    'title': S.current.WatchedOutdated,
  },
];

final List<Tab> _tabs = _ticketTabData
    .map((data) => Tab(
          text: data['title'],
        ))
    .toList();

class MyTicketScreen extends StatelessWidget {
  const MyTicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).MyTicket),
            bottom: TabBar(
              tabs: _tabs,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 24),
            ),
          ),
          body: TabBarView(
            children: [
              Container(),
              Container(),
            ],
          )),
    );
  }
}
