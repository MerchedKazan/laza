import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_appeorem/constants/settings.dart';
import 'package:test_appeorem/features/authentication/application/authentication_service.dart';

class RegisterController extends StateNotifier<AsyncValue<bool>> {
  RegisterController() : super(const AsyncData(false));
  final authenticationService = AuthenticationService();
  register(String userName, String password, String email) async {
    try {
      state = const AsyncLoading();
      bool register = await authenticationService.register(userName, password, email);
      state = AsyncData(register);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}

final registerControllerProv =StateNotifierProvider<RegisterController, AsyncValue<bool>>((ref) => RegisterController());
