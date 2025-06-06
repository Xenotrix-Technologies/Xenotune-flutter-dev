part of 'internet_check_bloc.dart';

@freezed
abstract class InternetCheckEvent with _$InternetCheckEvent {
  const factory InternetCheckEvent.check({required BuildContext context}) =
      Check;
  const factory InternetCheckEvent.ifConnected() = IfConnected;
}
