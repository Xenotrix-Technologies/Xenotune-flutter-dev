import 'package:dartz/dartz.dart';
import 'package:xenotune_flutter_dev/Domain/Core/Failures/mainfailures.dart';

abstract class IHttpRepo {
  Future<Either<MainFailures, String>> fetchMusic(String mood);
  Future<Either<MainFailures, String>> fetcAgainhMusic(String lastPlayed);
  Future<void> replaceSlot();
  Future<Either<MainFailures, String>> pauseMusic();
  Future<Either<MainFailures, String>> resumeMusic();
  Future<Either<MainFailures, String>> stopMusic();
}
