import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeBloc extends HydratedCubit<ThemeState> {
  ThemeBloc() : super(ThemeState(type: ThemeType.DARK));

  changeTheme(ThemeType type) {
    state.copyWith(type: type);
  }

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
    return ThemeState(
        type: json['themeType'] != 'light' ? ThemeType.DARK : ThemeType.LIGHT);
  }

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    return {'themeType': state.type != ThemeType.LIGHT ? 'dark' : 'light'};
  }
}

class ThemeState extends Equatable {
  final ThemeType type;

  const ThemeState({required this.type});

  @override
  List<Object?> get props => [type];

  ThemeState copyWith({ThemeType? type}) => ThemeState(type: type ?? this.type);
}

enum ThemeType { DARK, LIGHT }
