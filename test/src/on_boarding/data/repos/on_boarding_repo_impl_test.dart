import 'package:dartz/dartz.dart';
import 'package:fivoza_learning/src/on_boarding/data/datasources/on_boarding_local_data_source.dart';
import 'package:fivoza_learning/src/on_boarding/data/repos/on_boarding_repo_impl.dart';
import 'package:fivoza_learning/src/on_boarding/domain/repos/on_boarding_repo.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockOnBoardingLocalDataSrc extends Mock
    implements OnBoardingLocalDataSource {}

void main() {
  late OnBoardingLocalDataSource localDataSource;
  late OnBoardingRepoImpl repoImpl;

  setUp(() {
    localDataSource = MockOnBoardingLocalDataSrc();
    repoImpl = OnBoardingRepoImpl(localDataSource);
  });

  test('should be pass [OnBoardingRepo]', () {
    expect(repoImpl, isA<OnBoardingRepo>());
  });
  group('cacheFirstTimer', () {
    test('should complete successfully when call to local sourse is succesfull',
        () async {
      when(() => localDataSource.cacheFirstTimer())
          .thenAnswer((_) async => Future.value());

      final result = await repoImpl.cacheFirstTimer();
      expect(result, equals(const Right<dynamic, void>(null)));
      verify(() => localDataSource.cacheFirstTimer());
      verifyNoMoreInteractions(localDataSource);
    });
  });
}
