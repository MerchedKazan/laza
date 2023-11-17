import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_appeorem/constants/settings.dart';
import 'package:test_appeorem/features/authentication/application/authentication_service.dart';

class LoginController extends StateNotifier<AsyncValue<String>>{
  LoginController():super(const AsyncData(""));
  final authenticationService=AuthenticationService();
  login(String userName,String password)async{
    try{
      state=const AsyncLoading();
    String tokenApi=  await authenticationService.login(userName, password);
    // String tokenApi=  await authenticationService.register("",userName, password);
    // if(token!=null){
      boxSettings.put(token, tokenApi);
         state=AsyncData(tokenApi);
    // }
   
    }catch(e,st){
      state=AsyncError(e, st);
    }
  }
}

final loginControllerProv=StateNotifierProvider<LoginController,AsyncValue<String>>((ref) => LoginController());