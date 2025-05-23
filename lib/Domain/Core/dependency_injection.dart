import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:xenotune_flutter_dev/Domain/Core/dependency_injection.config.dart';

final getit = GetIt.instance;
@InjectableInit()
Future<void> configInjectable() async {
  getit.init(environment: Environment.prod);
}
