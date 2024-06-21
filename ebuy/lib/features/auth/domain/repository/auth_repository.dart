import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:ebuy/core/failure/failure.dart';
import 'package:ebuy/features/auth/data/repository/remote/auth_remote_repository.dart';
import 'package:ebuy/features/auth/domain/entity/auth_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepositoryProvider = Provider<IAuthRepository>((ref) {
  return ref.read(authRemoteRepositoryProvider);
});

abstract class IAuthRepository {
  Future<Either<Failure, bool>> registerStudent(AuthEntity student);
  Future<Either<Failure, bool>> loginStudent(String username, String password);
  Future<Either<Failure, String>> uploadProfilePicture(File file);
}
