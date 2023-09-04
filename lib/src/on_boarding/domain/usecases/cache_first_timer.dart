import 'package:fivoza_learning/core/usecases/usecases.dart';
import 'package:fivoza_learning/core/utils/typedefs.dart';
import 'package:fivoza_learning/src/on_boarding/domain/repos/on_boarding_repo.dart';

class CacheFirstTimer extends UsecaseWithoutParams<void> {
  const CacheFirstTimer(this._repo);

  final OnBoardingRepo _repo;

  @override
  ResultFuture<void> call() => _repo.cacheFirstTimer();
}
