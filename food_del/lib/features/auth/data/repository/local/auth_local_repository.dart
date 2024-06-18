import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_del/core/failure/failure.dart';
import 'package:food_del/features/auth/data/data_source/local/auth_local_datasource.dart';
import 'package:food_del/features/auth/domain/entity/auth_entity.dart';
import 'package:food_del/features/auth/domain/repository/auth_repository.dart';

final authLocalRepositoryProvider = Provider<IAuthRepository>((ref) {
  return AuthLocalRepository(
    ref.read(authLocalDataSourceProvider),
  );
});

class AuthLocalRepository implements IAuthRepository {
  final AuthLocalDataSource _authLocalDataSource;

  AuthLocalRepository(this._authLocalDataSource);

  @override
  Future<Either<Failure, bool>> loginStudent(String username, String password) {
    return _authLocalDataSource.loginStudent(username, password);
  }

  @override
  Future<Either<Failure, bool>> registerStudent(AuthEntity student) {
    return _authLocalDataSource.registerStudent(student);
  }

  @override
  Future<Either<Failure, String>> uploadProfilePicture(File file) async {
    return const Right("");
  }
}