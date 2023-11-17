import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_appeorem/constants/settings.dart';
import 'package:test_appeorem/features/authentication/application/authentication_service.dart';

class UpdatePasswordController extends StateNotifier<AsyncValue<bool>> {
  UpdatePasswordController() : super(const AsyncData(false));
  final authenticationService = AuthenticationService();
  updatePassword(String password) async {
    try {
      state = const AsyncLoading();
      bool register = await authenticationService.updatePassword( password);
      state = AsyncData(register);
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }
}

final passwordControllerProv =StateNotifierProvider<UpdatePasswordController, AsyncValue<bool>>((ref) => UpdatePasswordController());
