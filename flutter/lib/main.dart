import 'package:alphax/app-router.dart';
import 'package:alphax/config/theme/app_theme.dart';
import 'package:alphax/config/theme/colors.dart';
import 'package:alphax/config/theme/theme-bloc.dart';
import 'package:alphax/features/auth/bloc/auth-cubit.dart';
import 'package:alphax/features/auth/repository/auth.repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();
  final AuthRepository _authRepository = AuthRepository();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => ThemeBloc()),
          BlocProvider(
              create: (_) => AuthCubit(authRepository: _authRepository))
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: AppTheme(state.type == ThemeType.LIGHT
                    ? AppColors.lightColors
                    : AppColors.darkColors)
                .getTheme(),
            routerConfig: _appRouter.config(),
          );
        }));
  }
}
