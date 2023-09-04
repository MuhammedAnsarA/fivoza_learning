import 'package:fivoza_learning/core/utils/typedefs.dart';

abstract class OnBoardingRepo {
  const OnBoardingRepo();
  ResultFuture<void> cacheFirstTimer();

  ResultFuture<bool> checkIfUserIsFirstTimer();
}
