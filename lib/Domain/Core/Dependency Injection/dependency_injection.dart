import 'package:audio_service/audio_service.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:xenotune_flutter_dev/Domain/Core/Dependency%20Injection/dependency_injection.config.dart';
import 'package:xenotune_flutter_dev/Infrastructure/Audio/audio_repository.dart';

final getit = GetIt.instance;
@InjectableInit()
Future<void> configInjectable() async {
  getit.init(environment: Environment.prod);
  getit.registerSingleton<AudioHandler>(await initAudioService());
}
