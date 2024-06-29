// auth_usecase.dart
import 'package:dartz/dartz.dart';
import 'package:ebuy/core/failure/failure.dart';
import 'package:ebuy/features/auth/domain/entity/auth_entity.dart';
import 'package:ebuy/features/auth/domain/repository/auth_repository.dart';

class AuthUseCase {
  final IAuthRepository authRepository;

  AuthUseCase(this.authRepository);

  Future<Either<Failure, void>> registerStudent(AuthEntity student) {
    return authRepository.registerStudent(student);
  }

  Future<Either<Failure, bool>> loginStudent(String username, String password) {
    return authRepository.loginStudent(username, password);
  }
}
