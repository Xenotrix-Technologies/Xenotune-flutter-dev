import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:injectable/injectable.dart';
import 'package:xenotune_flutter_dev/Domain/Advertisment/i_ad_repo.dart';

part 'ad_event.dart';
part 'ad_state.dart';
part 'ad_bloc.freezed.dart';

@injectable
class AdBloc extends Bloc<AdEvent, AdState> {
  final IAdvertisementRepo iAdvertisementRepo;
  AdBloc(this.iAdvertisementRepo) : super(AdState.initial()) {
    on<LoadBannerAd>((event, emit) {
      final ad = iAdvertisementRepo.showBannerAd();
      emit(AdState(ad: ad));
    });
  }
}
