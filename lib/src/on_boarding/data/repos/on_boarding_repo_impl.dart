import 'package:dartz/dartz.dart';
import 'package:fivoza_learning/core/utils/typedefs.dart';
import 'package:fivoza_learning/src/on_boarding/data/datasources/on_boarding_local_data_source.dart';
import 'package:fivoza_learning/src/on_boarding/domain/repos/on_boarding_repo.dart';

class OnBoardingRepoImpl implements OnBoardingRepo {
  OnBoardingRepoImpl(
    this._localDataSource,
  );

  final OnBoardingLocalDataSource _localDataSource;

  @override
  ResultFuture<void> cacheFirstTimer() async {
    await _localDataSource.cacheFirstTimer();
    return const Right(null);
  }

  @override
  ResultFuture<bool> checkIfUserIsFirstTimer() {
    throw UnimplementedError();
  }
}
