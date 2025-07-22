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
import 'package:xenotune_flutter_dev/Application/Advertisement/ad_bloc.dart'
    as _i1008;
import 'package:xenotune_flutter_dev/Application/Internet%20Check/internet_check_bloc.dart'
    as _i391;
import 'package:xenotune_flutter_dev/Application/Intro%20bloc/intro_music_bloc.dart'
    as _i710;
import 'package:xenotune_flutter_dev/Application/Music_Control/music_control_bloc.dart'
    as _i20;
import 'package:xenotune_flutter_dev/Application/Subscription/subscription_bloc.dart'
    as _i374;
import 'package:xenotune_flutter_dev/Application/Timer/timer_bloc.dart'
    as _i932;
import 'package:xenotune_flutter_dev/Application/Ultimate_Sound/sounds_control_bloc.dart'
    as _i346;
import 'package:xenotune_flutter_dev/Domain/Advertisment/i_ad_repo.dart'
    as _i46;
import 'package:xenotune_flutter_dev/Domain/Http%20req/i_http_repo.dart'
    as _i954;
import 'package:xenotune_flutter_dev/Domain/Login%20functions/i_login.dart'
    as _i73;
import 'package:xenotune_flutter_dev/Domain/Subscription/i_subscription_repo.dart'
    as _i381;
import 'package:xenotune_flutter_dev/Infrastructure/Advertisement/advertisement__repository.dart'
    as _i580;
import 'package:xenotune_flutter_dev/Infrastructure/Http%20request/http_req.dart'
    as _i494;
import 'package:xenotune_flutter_dev/Infrastructure/Login/login.dart' as _i257;
import 'package:xenotune_flutter_dev/Infrastructure/SnackBar/snackbar.dart'
    as _i652;
import 'package:xenotune_flutter_dev/Infrastructure/Subscription/subscription_repository.dart'
    as _i596;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i710.IntroMusicBloc>(() => _i710.IntroMusicBloc());
    gh.factory<_i932.TimerBloc>(() => _i932.TimerBloc());
    gh.factory<_i346.SoundsControlBloc>(() => _i346.SoundsControlBloc());
    gh.lazySingleton<_i652.SnackBars>(() => _i652.SnackBars());
    gh.lazySingleton<_i381.ISubscriptionRepo>(() => _i596.PurchaseApi());
    gh.factory<_i374.SubscriptionBloc>(
      () => _i374.SubscriptionBloc(gh<_i381.ISubscriptionRepo>()),
    );
    gh.lazySingleton<_i954.IHttpRepo>(() => _i494.HttpReq());
    gh.lazySingleton<_i46.IAdvertisementRepo>(
      () => _i580.AdvertismentFunctions(),
    );
    gh.lazySingleton<_i73.ILogin>(() => _i257.LoginRepository());
    gh.factory<_i20.MusicControlBloc>(
      () => _i20.MusicControlBloc(gh<_i954.IHttpRepo>()),
    );
    gh.factory<_i391.InternetCheckBloc>(
      () => _i391.InternetCheckBloc(gh<_i652.SnackBars>()),
    );
    gh.factory<_i1008.AdBloc>(
      () => _i1008.AdBloc(gh<_i46.IAdvertisementRepo>()),
    );
    return this;
  }
}
