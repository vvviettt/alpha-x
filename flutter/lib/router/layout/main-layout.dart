import 'package:alphax/app-router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
        routes: [
          DashboardRoute(),
          SearchRoute(),
          NotificationRoute(),
          ProfileRoute()
        ],
        bottomNavigationBuilder: (_, state) {
          final unselectedIconColor = Theme.of(context)
              .bottomNavigationBarTheme
              .unselectedIconTheme
              ?.color;
          final selectedIconColor = Theme.of(context)
              .bottomNavigationBarTheme
              .selectedIconTheme
              ?.color;
          return Container(
              height: 70,
              padding: EdgeInsets.only(top: 10),
              color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
              child: Theme(
                  data: ThemeData(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  ),
                  child: BottomNavigationBar(
                      type: BottomNavigationBarType.fixed,
                      backgroundColor: Theme.of(context)
                          .bottomNavigationBarTheme
                          .backgroundColor,
                      selectedIconTheme: Theme.of(context)
                          .bottomNavigationBarTheme
                          .selectedIconTheme,
                      currentIndex: state.activeIndex,
                      onTap: state.setActiveIndex,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      mouseCursor: null,
                      selectedFontSize: 0,
                      unselectedFontSize: 0,
                      items: [
                        BottomNavigationBarItem(
                          backgroundColor: Colors.blue,
                          icon: SvgPicture.asset(
                            width: 24,
                            'assets/svg/home.svg',
                            color: unselectedIconColor,
                          ),
                          activeIcon: SvgPicture.asset(
                            'assets/svg/home-active.svg',
                            width: 24,
                            color: selectedIconColor,
                          ),
                          label: "",
                        ),
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                            'assets/svg/search.svg',
                            width: 24,
                            color: unselectedIconColor,
                          ),
                          activeIcon: SvgPicture.asset(
                            'assets/svg/search-active.svg',
                            width: 24,
                            color: selectedIconColor,
                          ),
                          label: 'Account',
                        ),
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                            'assets/svg/notification.svg',
                            width: 24,
                            color: unselectedIconColor,
                          ),
                          activeIcon: SvgPicture.asset(
                            'assets/svg/notification-active.svg',
                            width: 24,
                            color: selectedIconColor,
                          ),
                          label: 'Account',
                        ),
                        BottomNavigationBarItem(
                          icon: SvgPicture.asset(
                            'assets/svg/profile.svg',
                            width: 24,
                            color: unselectedIconColor,
                          ),
                          activeIcon: SvgPicture.asset(
                            'assets/svg/profile-active.svg',
                            width: 24,
                            color: selectedIconColor,
                          ),
                          label: 'Account',
                        ),
                      ])));
        });
  }
}
