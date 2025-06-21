// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:xenotune_flutter_dev/Application/Internet%20Check/internet_check_bloc.dart'
    as _i391;
import 'package:xenotune_flutter_dev/Application/Music_Control/music_control_bloc.dart'
    as _i20;
import 'package:xenotune_flutter_dev/Application/Timer/timer_bloc.dart'
    as _i932;
import 'package:xenotune_flutter_dev/Domain/Login%20functions/i_login.dart'
    as _i73;
import 'package:xenotune_flutter_dev/Infrastructure/Login/login.dart' as _i257;
import 'package:xenotune_flutter_dev/Infrastructure/SnackBar/snackbar.dart'
    as _i652;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i932.TimerBloc>(() => _i932.TimerBloc());
    gh.factory<_i20.MusicControlBloc>(() => _i20.MusicControlBloc());
    gh.lazySingleton<_i652.SnackBars>(() => _i652.SnackBars());
    gh.lazySingleton<_i73.ILogin>(() => _i257.LoginRepository());
    gh.factory<_i391.InternetCheckBloc>(
      () => _i391.InternetCheckBloc(gh<_i652.SnackBars>()),
    );
    return this;
  }
}
