import 'package:ebuy/core/common/my_snackbar.dart';
import 'package:ebuy/features/auth/domain/entity/auth_entity.dart';
import 'package:ebuy/features/auth/domain/usecases/auth_usecase.dart';
import 'package:ebuy/features/auth/presentation/navigator/login_navigator.dart';
import 'package:ebuy/features/auth/presentation/state/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authViewModelProvider = StateNotifierProvider<AuthViewModel, AuthState>(
  (ref) => AuthViewModel(
    ref.read(loginViewNavigatorProvider),
    ref.read(authUseCaseProvider as ProviderListenable<AuthUseCase>),
  ),
);

// ignore: camel_case_types
mixin authUseCaseProvider {}

class AuthViewModel extends StateNotifier<AuthState> {
  AuthViewModel(this.navigator, this.authUseCase) : super(AuthState.initial());

  final AuthUseCase authUseCase;
  final LoginViewNavigator navigator;

  Future<void> registerStudent(AuthEntity student) async {
    state = state.copyWith(isLoading: true);
    var data = await authUseCase.registerStudent(student);
    data.fold(
      (failure) {
        state = state.copyWith(isLoading: false, error: failure.error);
        showMySnackBar(message: failure.error, color: Colors.red);
      },
      (success) {
        state = state.copyWith(isLoading: false, error: null);
        showMySnackBar(message: "Successfully registered");
        navigator
            .openHomeView(); // Navigate to home after successful registration
      },
    );
  }

  Future<void> loginStudent(String username, String password) async {
    state = state.copyWith(isLoading: true);
    var data = await authUseCase.loginStudent(username, password);
    data.fold(
      (failure) {
        state = state.copyWith(isLoading: false, error: failure.error);
        showMySnackBar(message: failure.error, color: Colors.red);
      },
      (success) {
        state = state.copyWith(isLoading: false, error: null);
        navigator.openHomeView(); // Navigate to home after successful login
      },
    );
  }

  void openRegisterView() {
    navigator.openRegisterView();
  }

  void openHomeView() {
    navigator.openHomeView();
  }
}
