import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
// final  token = router.navigatorKey.currentContext.read<Auth>();
    const isAuthed = true;
    if (isAuthed)
      resolver.next(true); // book was found. proceed to the page
    else
      resolver.next(true); // book was found. proceed to the page
    // router.push(NotFoundRoute());
  }
}
