import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_del/core/failure/failure.dart';
import 'package:food_del/features/auth/data/repository/local/auth_local_repository.dart';

import 'package:food_del/features/auth/domain/entity/auth_entity.dart';

final authRepositoryProvider = Provider<IAuthRepository>((ref) {
  return ref.read(authLocalRepositoryProvider);
});

abstract class IAuthRepository {
  Future<Either<Failure, bool>> registerStudent(AuthEntity student);
  Future<Either<Failure, bool>> loginStudent(String username, String password);
  Future<Either<Failure, String>> uploadProfilePicture(File file);
}
