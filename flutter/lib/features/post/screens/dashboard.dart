import 'package:alphax/core/constants/constants.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  static const List<String> tabs = <String>[
    'Dành cho bạn',
    'Đang theo dõi',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return DefaultTabController(
        length: tabs.length, // Số lượng tab
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            backgroundColor: theme.appBarTheme.backgroundColor,
            foregroundColor: theme.appBarTheme.foregroundColor,
            toolbarHeight: 0,
            bottom: TabBar(
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                enableFeedback: false,
                labelStyle: theme.tabBarTheme.labelStyle,
                unselectedLabelStyle: theme.tabBarTheme.unselectedLabelStyle,
                dividerHeight: 0,
                indicatorColor: theme.tabBarTheme.indicatorColor,
                tabs: tabs
                    .asMap()
                    .entries
                    .map((item) => Tab(
                          text: item.value,
                        ))
                    .toList()),
          ),
          body: TabBarView(children: [
            Container(
              height: 400,
              child: Text(
                '1',
                style: TextStyle(color: Colors.amber),
              ),
            ),
            Container(
              child: Text('2'),
            ),
          ]),
        ));
  }
}
